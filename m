Subject: #yocto bootchooser: Cannot get state 'state'
To: yocto@lists.yoctoproject.org
From: hu.schlieben@codewrights.de
X-Originating-Location: Staufenberg, Lower Saxony, DE (5.10.161.194)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jan 2020 04:10:14 -0800
Message-ID: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1UDmjVucA9nyHmEZ5OSp"

--1UDmjVucA9nyHmEZ5OSp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

booting the new yocto zeus system manually by "boot mmc" works fine but de=
fault bootchooser fails with:

bootchooser: Cannot get state 'state'
Nothing bootable found on 'bootchooser'
Nothing bootable found

Building the "same" image in yocto thud works fine. The boot variables are=
:

* BOOT_system0_.default: 3
* BOOT_system1_.default: 3
* allow_color: 0
* autoboot_timeout: 3
* boot.default: bootchooser
boot.watchdog_timeout: 0
bootchooser.default_attempts: 3
bootchooser.default_priority: 1
bootchooser.disable_on_zero_attempts: 0
bootchooser.reset_attempts:=C2=A0 (list: "power-on", "all-zero")
bootchooser.reset_priorities:
bootchooser.retry: 0
* bootchooser.state_prefix: state.bootstate
* bootchooser.system0.boot: mmc
* bootchooser.system0.default_attempts: 3
* bootchooser.system0.default_priority: 20
* bootchooser.system1.boot: mmc1
* bootchooser.system1.default_attempts: 3
* bootchooser.system1.default_priority: 21
* bootchooser.targets: system0 system1
bootm.appendroot: 0
...

Thank you

hu

Moving from thud to zeus i This happens becuas

--1UDmjVucA9nyHmEZ5OSp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />booting the new yocto zeus system manually by "boot mmc" wor=
ks fine but default bootchooser fails with:&nbsp;<br />
<div><br />bootchooser: Cannot get state 'state'</div>
<div>Nothing bootable found on 'bootchooser'</div>
<div>Nothing bootable found</div>
<div><br />Building the "same" image in yocto thud works fine. The boot va=
riables are:<br /><br />
<div>* BOOT_system0_.default: 3</div>
<div>* BOOT_system1_.default: 3</div>
<div>* allow_color: 0</div>
<div>* autoboot_timeout: 3</div>
<div>* boot.default: bootchooser</div>
<div>&nbsp; boot.watchdog_timeout: 0</div>
<div>&nbsp; bootchooser.default_attempts: 3</div>
<div>&nbsp; bootchooser.default_priority: 1</div>
<div>&nbsp; bootchooser.disable_on_zero_attempts: 0</div>
<div>&nbsp; bootchooser.reset_attempts:&nbsp; (list: "power-on", "all-zero=
")</div>
<div>&nbsp; bootchooser.reset_priorities:</div>
<div>&nbsp; bootchooser.retry: 0</div>
<div>* bootchooser.state_prefix: state.bootstate</div>
<div>* bootchooser.system0.boot: mmc</div>
<div>* bootchooser.system0.default_attempts: 3</div>
<div>* bootchooser.system0.default_priority: 20</div>
<div>* bootchooser.system1.boot: mmc1</div>
<div>* bootchooser.system1.default_attempts: 3</div>
<div>* bootchooser.system1.default_priority: 21</div>
<div>* bootchooser.targets: system0 system1</div>
<div>&nbsp; bootm.appendroot: 0</div>
<div>...<br /><br />Thank you<br /><br />hu</div>
<br /><br /><br /><br />Moving from thud to zeus i This happens becuas</di=
v>

--1UDmjVucA9nyHmEZ5OSp--
