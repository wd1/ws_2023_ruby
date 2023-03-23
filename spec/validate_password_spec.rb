require 'spec_helper'

describe ValidatePassword do
  subject { described_class }
  context "args: 'Password1!'" do
    specify { expect(subject.perform('Password1!')).to eq(true) }
  end

  context "args: 'password1!'" do
    specify { expect(subject.perform('password1!')).to eq(false) }
  end

  context "args: 'Exaaample1!'" do
    specify { expect(subject.perform('Exaaample1!')).to eq(false) }
  end

  context "args: 'fail'" do
    specify { expect(subject.perform('fail')).to eq(false) }
  end

  context "args: 'Password1!Password1!Password1!'" do
    specify { expect(subject.perform('Password1!Password1!Password1!')).to eq(false) }
  end
end
