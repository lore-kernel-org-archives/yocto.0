Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5089AE00BD6; Wed, 21 Jun 2017 21:16:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95247E00BBD
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 21:16:21 -0700 (PDT)
X-Halon-ID: 8a15d6e4-5701-11e7-9ab8-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon) with ESMTPA
	id 8a15d6e4-5701-11e7-9ab8-005056917a89;
	Thu, 22 Jun 2017 06:16:18 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 22 Jun 2017 06:16:17 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>, <drew.moseley@mender.io>, Andrei Gherzan
	<andrei@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <cover.1497646644.git.drew.moseley@mender.io>
References: <cover.1497646644.git.drew.moseley@mender.io>
Message-ID: <a0a2fd2893681ae7193690b1421ec5f3@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [meta-chip][RFC PATCH 0/3] Initial attempt at flashing instructions.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Jun 2017 04:16:25 -0000
Content-Type: multipart/alternative;
	boundary="=_bd4025a94f144d2d4aa85c84f65e57c6"

--=_bd4025a94f144d2d4aa85c84f65e57c6
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2017-06-16 23:15 skrev drew.moseley@mender.io: 

> From: Drew
Moseley <drew.moseley@mender.io>
> 
> This set of patches adds the
native tools and target components needed to
> reflash the CHIP boards.
Additionally a shell script is added to the deploy
> directory showing
how to kick off a flash update. It's not ideal as I've
> hardcoded a max
size for the UBI image into the script and didn't see much
> of an
alternative. It does function though.
> 
> Drew
> 
> The following
changes since commit 0079e6ac10fc371d6f527270c23b887561f717aa:
> 
>
chip: Append to MACHINE_EXTRA_RRECOMMENDS rather than overwriting
(2017-06-15 13:37:19 +0100)
> 
> are available in the git repository
at:
> 
> git@github.com:drewmoseley/meta-chip.git
flashing-instructions
> 
> for you to fetch changes up to
195a92fc1faa49495d1a2b6cda0134f07ce72189:
> 
> chip: Add chip-u-boot-scr
recipe and flash script (2017-06-15 11:27:06 -0400)
> 
>
----------------------------------------------------------------
> Drew
Moseley (3):
> u-boot-chip: Deploy the sunxi-spl-with-ecc.bin file.
>
chip: Build sunxi-tools-native.
> chip: Add chip-u-boot-scr recipe and
flash script
> 
> README | 26 ++++++++-
> conf/layer.conf | 3 ++
>
conf/machine/chip.conf | 3 +-
>
recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb | 70
+++++++++++++++++++++++++
>
recipes-bsp/chip-u-boot-scr/files/boot.cmd.full | 32 +++++++++++
>
recipes-bsp/chip-u-boot-scr/files/boot.cmd.in | 43 +++++++++++++++
>
recipes-bsp/u-boot/u-boot-chip_git.bb | 7 +++
> 7 files changed, 182
insertions(+), 2 deletions(-)
> create mode 100644
recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
> create mode 100644
recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
> create mode 100644
recipes-bsp/chip-u-boot-scr/files/boot.cmd.in
> 
> Drew Moseley (3):
>
u-boot-chip: Deploy the sunxi-spl-with-ecc.bin file.
> chip: Build
sunxi-tools-native.
> chip: Add chip-u-boot-scr recipe and flash
script
> 
> README | 26 ++++++++-
> conf/layer.conf | 3 ++
>
conf/machine/chip.conf | 3 +-
>
recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb | 70
+++++++++++++++++++++++++
>
recipes-bsp/chip-u-boot-scr/files/boot.cmd.full | 32 +++++++++++
>
recipes-bsp/chip-u-boot-scr/files/boot.cmd.in | 43 +++++++++++++++
>
recipes-bsp/u-boot/u-boot-chip_git.bb | 7 +++
> 7 files changed, 182
insertions(+), 2 deletions(-)
> create mode 100644
recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
> create mode 100644
recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
> create mode 100644
recipes-bsp/chip-u-boot-scr/files/boot.cmd.in
> 
> -- 
> 2.7.4

Hi Drew,


First of all, great work. The flashing mechanism have been sort of a
headache for many. Even if like you say there are some limitations etc
with this proposal, it works and it's easy to use. Also since no other
major concern have been provided by other reviewers, I think you should
fix the comments received and then send it as non-RFC patch. Also check
with Andrei if he want to have this as a PR in github as well. 

BR
Petter 

Petter Mabäcker

Technux <petter@technux.se>
www.technux.se
 

--=_bd4025a94f144d2d4aa85c84f65e57c6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2017-06-16 23:15 skrev drew.moseley@mender.io:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>From: Drew Moseley &lt;<a href=3D"mailto:drew.moseley@mender.io">drew=
=2Emoseley@mender.io</a>&gt;

This set of patches adds the native tools and target components needed to
reflash the CHIP boards.  Additionally a shell script is added to the deplo=
y
directory showing how to kick off a flash update. It's not ideal as I've
hardcoded a max size for the UBI image into the script and didn't see much
of an alternative. It does function though.

Drew

The following changes since commit 0079e6ac10fc371d6f527270c23b887561f717aa=
:

  chip: Append to MACHINE_EXTRA_RRECOMMENDS rather than overwriting (2017-0=
6-15 13:37:19 +0100)

are available in the git repository at:

  <a href=3D"mailto:git@github.com:drewmoseley">git@github.com:drewmoseley<=
/a>/meta-chip.git flashing-instructions

for you to fetch changes up to 195a92fc1faa49495d1a2b6cda0134f07ce72189:

  chip: Add chip-u-boot-scr recipe and flash script (2017-06-15 11:27:06 -0=
400)

----------------------------------------------------------------
Drew Moseley (3):
      u-boot-chip: Deploy the sunxi-spl-with-ecc.bin file.
      chip: Build sunxi-tools-native.
      chip: Add chip-u-boot-scr recipe and flash script

 README                                          | 26 ++++++++-
 conf/layer.conf                                 |  3 ++
 conf/machine/chip.conf                          |  3 +-
 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb  | 70 +++++++++++++++++++++=
++++
 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full | 32 +++++++++++
 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in   | 43 +++++++++++++++
 recipes-bsp/u-boot/u-boot-chip_git.bb           |  7 +++
 7 files changed, 182 insertions(+), 2 deletions(-)
 create mode 100644 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
 create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
 create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in

Drew Moseley (3):
  u-boot-chip: Deploy the sunxi-spl-with-ecc.bin file.
  chip: Build sunxi-tools-native.
  chip: Add chip-u-boot-scr recipe and flash script

 README                                          | 26 ++++++++-
 conf/layer.conf                                 |  3 ++
 conf/machine/chip.conf                          |  3 +-
 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb  | 70 +++++++++++++++++++++=
++++
 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full | 32 +++++++++++
 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in   | 43 +++++++++++++++
 recipes-bsp/u-boot/u-boot-chip_git.bb           |  7 +++
 7 files changed, 182 insertions(+), 2 deletions(-)
 create mode 100644 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
 create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
 create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in

<span class=3D"sig">--=20
2.7.4
</span></pre>
</blockquote>
<p>Hi Drew,</p>
<p>First of all, great work. The flashing mechanism have been sort of a hea=
dache for many. Even if like you say there are some limitations etc with th=
is proposal, it works and it's easy to use. Also since no other major conce=
rn have been provided by other reviewers, I think you should fix the commen=
ts received and then send it as non-RFC patch. Also check with Andrei if he=
 want to have this as a PR in github as well.</p>
<p>BR Petter</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_bd4025a94f144d2d4aa85c84f65e57c6--
