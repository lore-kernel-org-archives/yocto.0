Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 497A7E0084F; Mon,  6 Aug 2018 14:12:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 416FCE006D2
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2018 14:12:15 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id 8-v6so24829198oip.0
	for <yocto@yoctoproject.org>; Mon, 06 Aug 2018 14:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+8rZlrToLJJpgZqgAFnGM6Q6Q1yRlvPeIhg/8fCWOiM=;
	b=KX1kQBOOcd04lcHmkmEWfThPhb7i8fySpJElI27/dyXQgTvEZxuLaH3fPzY+SuLj7I
	9l9bYcR+91lkMboMU9gWnae2zzq+oQ2gL/6l3zQJkJeJVOkwMuiEC4Vy/K0E7s9AFvse
	4bNrNT6LNGf8jfYn15idBiWomQNE+aOSB6EcacZ+eSB5yHKGUVwgR83x/sRG4W83ampQ
	v/FD8xsD974Ke5ya8N6R7mrqVw+0y/RKqmcTD1bh2Su7JKGgo8PEv3x3Zssb5/9Ik3Aa
	XR+mCyhC9m3fFkqak/pFIF6bRsCwdbcOXrNKqmED/sGhSnBoBN8UEFltLSypkot/7iMp
	9dCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+8rZlrToLJJpgZqgAFnGM6Q6Q1yRlvPeIhg/8fCWOiM=;
	b=kaYrW6E5vu7xJjr147EQkgImT2nbfa1AnJMAuVhj10eNh3ItN4STFJYXSEakZz+O5z
	3D4e/vzyvpKOFr5VB0fFW6HHrB8+XlFs1HKgelkyOyBnjCne2bc7Kbm+EUaRoahkc2UR
	3fgS4ZKX2deaKhlqcWMW2+FLZRsdde/qTAOFO+Jg0zjv5e8E0Nxnzx1Tzm8m3mnovEb0
	eF2BOeUDgbyr/lh9JL0a+xwld4K9PT54MEl0IfmS65/nyXZ0dvMnkh7T9SSUHyWqypw+
	5hdeXmwunwg9grYiEAYtMPbhryJS3Xk4TGLMFEg/BHPEab3UYKgi2zwToXoau/QKECTa
	U4vw==
X-Gm-Message-State: AOUpUlHwxO9uYfSFtjFdf0ElzUSH9JbqIbT+KmFIs0oQcliep0sPHCgK
	zw17z+v2AfgrxOodJmysx/vFY63ZofBDsxUjNFXz4Q==
X-Google-Smtp-Source: AAOMgpfKElzzhRZcXfBprYJGh8nzyw1iJzXY4nISFb58H/Jh+KUuZj4jpWtChSlop2lR4oBLw3TYlxHN5V/4z68QqN0=
X-Received: by 2002:aca:e450:: with SMTP id
	b77-v6mr17715064oih.0.1533589934545; 
	Mon, 06 Aug 2018 14:12:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2d81:0:0:0:0:0 with HTTP;
	Mon, 6 Aug 2018 14:12:13 -0700 (PDT)
In-Reply-To: <1533555294-11187-1-git-send-email-ptsneves@gmail.com>
References: <1533555294-11187-1-git-send-email-ptsneves@gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Mon, 6 Aug 2018 14:12:13 -0700
Message-ID: <CAFNP8OvEmH364jxPfASjE+4xR-RyZvozPWKTu1hr+KVE-xRh7g@mail.gmail.com>
To: Paulo Neves <ptsneves@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-docs] documentation: Updated testimage targets.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 06 Aug 2018 21:12:16 -0000
Content-Type: multipart/alternative; boundary="00000000000047a1a50572cabb31"

--00000000000047a1a50572cabb31
Content-Type: text/plain; charset="UTF-8"

Paulo,

I have some questions on this commit for the dev-manual.

See inline comments from me....



On Mon, Aug 6, 2018 at 4:34 AM, Paulo Neves <ptsneves@gmail.com> wrote:

> The documentation of available names for TEST_TARGET have
> been updated to match the convention of using the
> class names of controllers.
>
> Signed-off-by: Paulo Neves <ptsneves@gmail.com>
> ---
>  documentation/dev-manual/dev-manual-common-tasks.xml |  8 ++++----
>  documentation/ref-manual/ref-variables.xml           | 19
> ++++---------------
>  2 files changed, 8 insertions(+), 19 deletions(-)
>
> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
> b/documentation/dev-manual/dev-manual-common-tasks.xml
> index 0cb967f..2fcdad0 100644
> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> @@ -11400,7 +11400,7 @@
>                              within a separately started QEMU or any
>                              other virtual machine manager.
>                              </para></listitem>
> -                        <listitem><para><emphasis>"Systemd-bootTarget":</
> emphasis>
> +                        <listitem><para><emphasis>"
> SystemdbootTarget":</emphasis>
>                              Choose "Systemd-bootTarget" if your hardware
> is
>

There are many instances of the term "Systemd-bootTarget" remaining in the
manual.  I assume they also will need to convert to "SystemdbootTarget"?


>                              an EFI-based machine with
>                              <filename>systemd-boot</filename> as
> bootloader and
> @@ -11459,10 +11459,10 @@
>              </section>
>
>              <section id='selecting-systemd-boottarget'>
> -                <title>Selecting Systemd-bootTarget</title>
> +                <title>Selecting SystemdbootTarget</title>
>
>                  <para>
> -                    If you did not set <filename>TEST_TARGET</filename>
> to
> +                    If you did not set <filename>TEST_TARG
>

Looks like an early truncation of the line that is used for the
replacement?  Should be "If you did not set
<filename>TEST_TARGET</filename> to"

                     "Systemd-bootTarget", then you do not need any
> information
>                      in this section.
>                      You can skip down to the
> @@ -11472,7 +11472,7 @@
>
>                  <para>
>                      If you did set <filename>TEST_TARGET</filename> to
> -                    "Systemd-bootTarget", you also need to perform a
> one-time
> +                    "SystemdbootTarget", you also need to perform a
> one-time
>                      setup of your master image by doing the following:
>                      <orderedlist>
>                          <listitem><para><emphasis>Set
> <filename>EFI_PROVIDER</filename>:</emphasis>
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index 2465553..a61fee6 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -15162,35 +15162,24 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>                      You can provide the following arguments with
>                      <filename>TEST_TARGET</filename>:
>                      <itemizedlist>
> -                        <listitem><para><emphasis>"qemu" and
> "QemuTarget":</emphasis>
> +                        <listitem><para><emphasis>"
> QemuTarget":</emphasis>
>                              Boots a QEMU image and runs the tests.
>                              See the
>                              "<ulink url='&YOCTO_DOCS_DEV_URL;#
> qemu-image-enabling-tests'>Enabling Runtime Tests on QEMU</ulink>"
>                              section in the Yocto Project Development Tasks
>                              Manual for more information.
>                              </para></listitem>
> -                        <listitem><para><emphasis>"simpleremote" and
> "SimpleRemoteTarget":</emphasis>
> +                        <listitem><para><emphasis>"SimpleRemoteTarget":</
> emphasis>
>                              Runs the tests on target hardware that is
> already
>                              up and running.
>                              The hardware can be on the network or it can
> be
>                              a device running an image on QEMU.
>                              You must also set
>                              <link linkend='var-TEST_TARGET_IP'><
> filename>TEST_TARGET_IP</filename></link>
> -                            when you use "simpleremote" or
> "SimpleRemoteTarget".
> +                            when you use "SimpleRemoteTarget".
>                              <note>
>                                  This argument is defined in
> -                                <filename>meta/lib/oeqa/
> targetcontrol.py</filename>.
> -                                The small caps names are kept for
> compatibility
> -                                reasons.
> -                            </note>
> -                            </para></listitem>
> -                        <listitem><para><emphasis>"
> GummibootTarget":</emphasis>
> -                            Automatically deploys and runs tests on an
> -                            EFI-enabled machine that has a master image
> -                            installed.
> -                            <note>
> -                                This argument is defined in
> -                                <filename>meta/lib/oeqa/
> controllers/masterimage.py</filename>.
> +                                <filename>meta/lib/oeqa/
> controllers/simpleremote.py</filename>.
>

I cannot find any file named "meta/lib/oeqa/controllers/simpleremote.py" in
the poky repository.  Is this file you are specifying correct for a
reference to the "SimpleRemoteTarget" parameter?

                             </note>
>                              </para></listitem>
>                      </itemizedlist>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000047a1a50572cabb31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj5QYXVsbywgPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+
SSBoYXZlIHNvbWUgcXVlc3Rpb25zIG9uIHRoaXMgY29tbWl0IGZvciB0aGUgZGV2LW1hbnVhbC4g
PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+U2VlIGlubGluZSBjb21tZW50cyBmcm9tIG1l
Li4uLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXYgY2xhc3M9ImdtYWls
X2V4dHJhIj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPk9uIE1vbiwgQXVnIDYsIDIwMTgg
YXQgNDozNCBBTSwgUGF1bG8gTmV2ZXMgPHNwYW4gZGlyPSJsdHIiPiZsdDs8YSBocmVmPSJtYWls
dG86cHRzbmV2ZXNAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+cHRzbmV2ZXNAZ21haWwuY29t
PC9hPiZndDs8L3NwYW4+IHdyb3RlOjxicj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUi
IHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRk
aW5nLWxlZnQ6MWV4Ij5UaGUgZG9jdW1lbnRhdGlvbiBvZiBhdmFpbGFibGUgbmFtZXMgZm9yIFRF
U1RfVEFSR0VUIGhhdmU8YnI+DQpiZWVuIHVwZGF0ZWQgdG8gbWF0Y2ggdGhlIGNvbnZlbnRpb24g
b2YgdXNpbmcgdGhlPGJyPg0KY2xhc3MgbmFtZXMgb2YgY29udHJvbGxlcnMuPGJyPg0KPGJyPg0K
U2lnbmVkLW9mZi1ieTogUGF1bG8gTmV2ZXMgJmx0OzxhIGhyZWY9Im1haWx0bzpwdHNuZXZlc0Bn
bWFpbC5jb20iPnB0c25ldmVzQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KLS0tPGJyPg0KwqBkb2N1
bWVudGF0aW9uL2Rldi1tYW51YWwvZGV2LTx3YnI+bWFudWFsLWNvbW1vbi10YXNrcy54bWwgfMKg
IDggKysrKy0tLS08YnI+DQrCoGRvY3VtZW50YXRpb24vcmVmLW1hbnVhbC9yZWYtPHdicj52YXJp
YWJsZXMueG1swqAgwqAgwqAgwqAgwqAgwqB8IDE5ICsrKystLS0tLS0tLS0tLS0tLS08YnI+DQrC
oDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSk8YnI+DQo8
YnI+DQpkaWZmIC0tZ2l0IGEvZG9jdW1lbnRhdGlvbi9kZXYtbWFudWFsLzx3YnI+ZGV2LW1hbnVh
bC1jb21tb24tdGFza3MueG1sIGIvZG9jdW1lbnRhdGlvbi9kZXYtbWFudWFsLzx3YnI+ZGV2LW1h
bnVhbC1jb21tb24tdGFza3MueG1sPGJyPg0KaW5kZXggMGNiOTY3Zi4uMmZjZGFkMCAxMDA2NDQ8
YnI+DQotLS0gYS9kb2N1bWVudGF0aW9uL2Rldi1tYW51YWwvPHdicj5kZXYtbWFudWFsLWNvbW1v
bi10YXNrcy54bWw8YnI+DQorKysgYi9kb2N1bWVudGF0aW9uL2Rldi1tYW51YWwvPHdicj5kZXYt
bWFudWFsLWNvbW1vbi10YXNrcy54bWw8YnI+DQpAQCAtMTE0MDAsNyArMTE0MDAsNyBAQDxicj4N
CsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgd2l0aGluIGEgc2Vw
YXJhdGVseSBzdGFydGVkIFFFTVUgb3IgYW55PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBvdGhlciB2aXJ0dWFsIG1hY2hpbmUgbWFuYWdlci48YnI+DQrC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDsvcGFyYSZndDsm
bHQ7L2xpc3RpdGVtJmd0Ozxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCAmbHQ7bGlzdGl0ZW0mZ3Q7Jmx0O3BhcmEmZ3Q7Jmx0O2VtcGhhc2lzJmd0OyZxdW90Ozx3YnI+
U3lzdGVtZC1ib290VGFyZ2V0JnF1b3Q7OiZsdDsvPHdicj5lbXBoYXNpcyZndDs8YnI+DQorwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgJmx0O2xpc3RpdGVtJmd0OyZsdDtwYXJh
Jmd0OyZsdDtlbXBoYXNpcyZndDsmcXVvdDs8d2JyPlN5c3RlbWRib290VGFyZ2V0JnF1b3Q7OiZs
dDsvZW1waGFzaXMmZ3Q7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBDaG9vc2UgJnF1b3Q7U3lzdGVtZC1ib290VGFyZ2V0JnF1b3Q7IGlmIHlvdXIgaGFy
ZHdhcmUgaXM8YnI+PC9ibG9ja3F1b3RlPjxkaXY+wqA8L2Rpdj48ZGl2PlRoZXJlIGFyZSBtYW55
IGluc3RhbmNlcyBvZiB0aGUgdGVybSAmcXVvdDtTeXN0ZW1kLWJvb3RUYXJnZXQmcXVvdDsgcmVt
YWluaW5nIGluIHRoZSBtYW51YWwuwqAgSSBhc3N1bWUgdGhleSBhbHNvIHdpbGwgbmVlZCB0byBj
b252ZXJ0IHRvICZxdW90O1N5c3RlbWRib290VGFyZ2V0JnF1b3Q7PzwvZGl2PjxkaXY+wqA8L2Rp
dj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAgLjhl
eDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij4NCsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYW4gRUZJLWJhc2VkIG1hY2hpbmUg
d2l0aDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJmx0
O2ZpbGVuYW1lJmd0O3N5c3RlbWQtYm9vdCZsdDsvPHdicj5maWxlbmFtZSZndDsgYXMgYm9vdGxv
YWRlciBhbmQ8YnI+DQpAQCAtMTE0NTksMTAgKzExNDU5LDEwIEBAPGJyPg0KwqAgwqAgwqAgwqAg
wqAgwqAgwqAmbHQ7L3NlY3Rpb24mZ3Q7PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAm
bHQ7c2VjdGlvbiBpZD0mIzM5O3NlbGVjdGluZy1zeXN0ZW1kLTx3YnI+Ym9vdHRhcmdldCYjMzk7
Jmd0Ozxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAmbHQ7dGl0bGUmZ3Q7U2VsZWN0aW5n
IFN5c3RlbWQtYm9vdFRhcmdldCZsdDsvdGl0bGUmZ3Q7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgICZsdDt0aXRsZSZndDtTZWxlY3RpbmcgU3lzdGVtZGJvb3RUYXJnZXQmbHQ7L3RpdGxl
Jmd0Ozxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O3BhcmEmZ3Q7PGJy
Pg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIElmIHlvdSBkaWQgbm90IHNldCAmbHQ7
ZmlsZW5hbWUmZ3Q7VEVTVF9UQVJHRVQmbHQ7Lzx3YnI+ZmlsZW5hbWUmZ3Q7IHRvPGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIElmIHlvdSBkaWQgbm90IHNldCAmbHQ7ZmlsZW5h
bWUmZ3Q7VEVTVF9UQVJHPGJyPjwvYmxvY2txdW90ZT48ZGl2Pjxicj48L2Rpdj48ZGl2Pkxvb2tz
IGxpa2UgYW4gZWFybHkgdHJ1bmNhdGlvbiBvZiB0aGUgbGluZSB0aGF0IGlzIHVzZWQgZm9yIHRo
ZSByZXBsYWNlbWVudD/CoCBTaG91bGQgYmUgJnF1b3Q7SWYgeW91IGRpZCBub3Qgc2V0ICZsdDtm
aWxlbmFtZSZndDtURVNUX1RBUkdFVCZsdDsvZmlsZW5hbWUmZ3Q7IHRvJnF1b3Q7PC9kaXY+PGRp
dj4gPGJyPjwvZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdp
bjowIDAgMCAuOGV4O2JvcmRlci1sZWZ0OjFweCAjY2NjIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgi
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAmcXVvdDtTeXN0ZW1kLWJvb3RUYXJn
ZXQmcXVvdDssIHRoZW4geW91IGRvIG5vdCBuZWVkIGFueSBpbmZvcm1hdGlvbjxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaW4gdGhpcyBzZWN0aW9uLjxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgWW91IGNhbiBza2lwIGRvd24gdG8gdGhlPGJyPg0KQEAg
LTExNDcyLDcgKzExNDcyLDcgQEA8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCZsdDtwYXJhJmd0Ozxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSWYgeW91
IGRpZCBzZXQgJmx0O2ZpbGVuYW1lJmd0O1RFU1RfVEFSR0VUJmx0Oy88d2JyPmZpbGVuYW1lJmd0
OyB0bzxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAmcXVvdDtTeXN0ZW1kLWJv
b3RUYXJnZXQmcXVvdDssIHlvdSBhbHNvIG5lZWQgdG8gcGVyZm9ybSBhIG9uZS10aW1lPGJyPg0K
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICZxdW90O1N5c3RlbWRib290VGFyZ2V0JnF1
b3Q7LCB5b3UgYWxzbyBuZWVkIHRvIHBlcmZvcm0gYSBvbmUtdGltZTxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgc2V0dXAgb2YgeW91ciBtYXN0ZXIgaW1hZ2UgYnkgZG9pbmcg
dGhlIGZvbGxvd2luZzo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDtv
cmRlcmVkbGlzdCZndDs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCZsdDtsaXN0aXRlbSZndDsmbHQ7cGFyYSZndDsmbHQ7ZW1waGFzaXMmZ3Q7U2V0ICZsdDtmaWxl
bmFtZSZndDtFRklfUFJPVklERVImbHQ7Lzx3YnI+ZmlsZW5hbWUmZ3Q7OiZsdDsvZW1waGFzaXMm
Z3Q7PGJyPg0KZGlmZiAtLWdpdCBhL2RvY3VtZW50YXRpb24vcmVmLW1hbnVhbC88d2JyPnJlZi12
YXJpYWJsZXMueG1sIGIvZG9jdW1lbnRhdGlvbi9yZWYtbWFudWFsLzx3YnI+cmVmLXZhcmlhYmxl
cy54bWw8YnI+DQppbmRleCAyNDY1NTUzLi5hNjFmZWU2IDEwMDY0NDxicj4NCi0tLSBhL2RvY3Vt
ZW50YXRpb24vcmVmLW1hbnVhbC88d2JyPnJlZi12YXJpYWJsZXMueG1sPGJyPg0KKysrIGIvZG9j
dW1lbnRhdGlvbi9yZWYtbWFudWFsLzx3YnI+cmVmLXZhcmlhYmxlcy54bWw8YnI+DQpAQCAtMTUx
NjIsMzUgKzE1MTYyLDI0IEBAIHJlY2lwZXMtZ3JhcGhpY3MveG9yZy1mb250Lzx3YnI+Zm9udC1h
bGlhc18xLjAuMy5iYjpQUiA9ICZxdW90OyR7SU5DX1BSfS4zJnF1b3Q7PGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBZb3UgY2FuIHByb3ZpZGUgdGhlIGZvbGxvd2luZyBhcmd1
bWVudHMgd2l0aDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O2ZpbGVu
YW1lJmd0O1RFU1RfVEFSR0VUJmx0Oy88d2JyPmZpbGVuYW1lJmd0Ozo8YnI+DQrCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDtpdGVtaXplZGxpc3QmZ3Q7PGJyPg0KLcKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICZsdDtsaXN0aXRlbSZndDsmbHQ7cGFyYSZndDsm
bHQ7ZW1waGFzaXMmZ3Q7JnF1b3Q7PHdicj5xZW11JnF1b3Q7IGFuZCAmcXVvdDtRZW11VGFyZ2V0
JnF1b3Q7OiZsdDsvZW1waGFzaXMmZ3Q7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgICZsdDtsaXN0aXRlbSZndDsmbHQ7cGFyYSZndDsmbHQ7ZW1waGFzaXMmZ3Q7JnF1
b3Q7PHdicj5RZW11VGFyZ2V0JnF1b3Q7OiZsdDsvZW1waGFzaXMmZ3Q7PGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBCb290cyBhIFFFTVUgaW1hZ2UgYW5k
IHJ1bnMgdGhlIHRlc3RzLjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgU2VlIHRoZTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgJnF1b3Q7Jmx0O3VsaW5rIHVybD0mIzM5OyZhbXA7WU9DVE9fRE9DU19ERVZfVVJM
OyM8d2JyPnFlbXUtaW1hZ2UtZW5hYmxpbmctdGVzdHMmIzM5OyZndDs8d2JyPkVuYWJsaW5nIFJ1
bnRpbWUgVGVzdHMgb24gUUVNVSZsdDsvdWxpbmsmZ3Q7JnF1b3Q7PGJyPg0KwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzZWN0aW9uIGluIHRoZSBZb2N0byBQcm9q
ZWN0IERldmVsb3BtZW50IFRhc2tzPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBNYW51YWwgZm9yIG1vcmUgaW5mb3JtYXRpb24uPGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7L3BhcmEmZ3Q7Jmx0Oy9saXN0
aXRlbSZndDs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgJmx0O2xp
c3RpdGVtJmd0OyZsdDtwYXJhJmd0OyZsdDtlbXBoYXNpcyZndDsmcXVvdDs8d2JyPnNpbXBsZXJl
bW90ZSZxdW90OyBhbmQgJnF1b3Q7U2ltcGxlUmVtb3RlVGFyZ2V0JnF1b3Q7OiZsdDsvPHdicj5l
bXBoYXNpcyZndDs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgJmx0
O2xpc3RpdGVtJmd0OyZsdDtwYXJhJmd0OyZsdDtlbXBoYXNpcyZndDsmcXVvdDs8d2JyPlNpbXBs
ZVJlbW90ZVRhcmdldCZxdW90OzombHQ7Lzx3YnI+ZW1waGFzaXMmZ3Q7PGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBSdW5zIHRoZSB0ZXN0cyBvbiB0YXJn
ZXQgaGFyZHdhcmUgdGhhdCBpcyBhbHJlYWR5PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqB1cCBhbmQgcnVubmluZy48YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFRoZSBoYXJkd2FyZSBjYW4gYmUgb24gdGhlIG5l
dHdvcmsgb3IgaXQgY2FuIGJlPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBhIGRldmljZSBydW5uaW5nIGFuIGltYWdlIG9uIFFFTVUuPGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBZb3UgbXVzdCBhbHNvIHNldDxi
cj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O2xpbmsg
bGlua2VuZD0mIzM5O3Zhci1URVNUX1RBUkdFVF9JUCYjMzk7Jmd0OyZsdDs8d2JyPmZpbGVuYW1l
Jmd0O1RFU1RfVEFSR0VUX0lQJmx0Oy88d2JyPmZpbGVuYW1lJmd0OyZsdDsvbGluayZndDs8YnI+
DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgd2hlbiB5b3UgdXNl
ICZxdW90O3NpbXBsZXJlbW90ZSZxdW90OyBvciAmcXVvdDtTaW1wbGVSZW1vdGVUYXJnZXQmcXVv
dDsuPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHdoZW4g
eW91IHVzZSAmcXVvdDtTaW1wbGVSZW1vdGVUYXJnZXQmcXVvdDsuPGJyPg0KwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bm90ZSZndDs8YnI+DQrCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFRoaXMgYXJndW1lbnQg
aXMgZGVmaW5lZCBpbjxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCAmbHQ7ZmlsZW5hbWUmZ3Q7bWV0YS9saWIvb2VxYS88d2JyPnRhcmdldGNvbnRy
b2wucHkmbHQ7L2ZpbGVuYW1lJmd0Oy48YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgVGhlIHNtYWxsIGNhcHMgbmFtZXMgYXJlIGtlcHQgZm9yIGNv
bXBhdGliaWxpdHk8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgcmVhc29ucy48YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgJmx0Oy9ub3RlJmd0Ozxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAmbHQ7L3BhcmEmZ3Q7Jmx0Oy9saXN0aXRlbSZndDs8YnI+DQotwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgJmx0O2xpc3RpdGVtJmd0OyZsdDtwYXJhJmd0
OyZsdDtlbXBoYXNpcyZndDsmcXVvdDs8d2JyPkd1bW1pYm9vdFRhcmdldCZxdW90OzombHQ7L2Vt
cGhhc2lzJmd0Ozxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBBdXRvbWF0aWNhbGx5IGRlcGxveXMgYW5kIHJ1bnMgdGVzdHMgb24gYW48YnI+DQotwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgRUZJLWVuYWJsZWQgbWFjaGluZSB0
aGF0IGhhcyBhIG1hc3RlciBpbWFnZTxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCBpbnN0YWxsZWQuPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgICZsdDtub3RlJmd0Ozxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBUaGlzIGFyZ3VtZW50IGlzIGRlZmluZWQgaW48YnI+
DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgJmx0O2Zp
bGVuYW1lJmd0O21ldGEvbGliL29lcWEvPHdicj5jb250cm9sbGVycy9tYXN0ZXJpbWFnZS5weSZs
dDsvPHdicj5maWxlbmFtZSZndDsuPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgICZsdDtmaWxlbmFtZSZndDttZXRhL2xpYi9vZXFhLzx3YnI+Y29u
dHJvbGxlcnMvc2ltcGxlcmVtb3RlLnB5Jmx0Oy88d2JyPmZpbGVuYW1lJmd0Oy48YnI+PC9ibG9j
a3F1b3RlPjxkaXY+PGJyPjwvZGl2PjxkaXY+SSBjYW5ub3QgZmluZCBhbnkgZmlsZSBuYW1lZCAm
cXVvdDttZXRhL2xpYi9vZXFhL2NvbnRyb2xsZXJzL3NpbXBsZXJlbW90ZS5weSZxdW90OyBpbiB0
aGUgcG9reSByZXBvc2l0b3J5LsKgIElzIHRoaXMgZmlsZSB5b3UgYXJlIHNwZWNpZnlpbmcgY29y
cmVjdCBmb3IgYSByZWZlcmVuY2UgdG8gdGhlICZxdW90O1NpbXBsZVJlbW90ZVRhcmdldCZxdW90
OyBwYXJhbWV0ZXI/PC9kaXY+PGRpdj4gPGJyPjwvZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFp
bF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4O2JvcmRlci1sZWZ0OjFweCAjY2NjIHNv
bGlkO3BhZGRpbmctbGVmdDoxZXgiPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAmbHQ7L25vdGUmZ3Q7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAmbHQ7L3BhcmEmZ3Q7Jmx0Oy9saXN0aXRlbSZndDs8YnI+DQrCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDsvaXRlbWl6ZWRsaXN0Jmd0Ozxicj4NCjxz
cGFuIGNsYXNzPSJIT0VuWmIiPjxmb250IGNvbG9yPSIjODg4ODg4Ij4tLSA8YnI+DQoyLjcuNDxi
cj4NCjxicj4NCi0tIDxicj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzx3YnI+X19f
X19fX19fX19fX19fX188YnI+DQp5b2N0byBtYWlsaW5nIGxpc3Q8YnI+DQo8YSBocmVmPSJtYWls
dG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT48YnI+
DQo8YSBocmVmPSJodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8i
IHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vbGlzdHMueW9jdG9wcm9q
ZWN0Ljx3YnI+b3JnL2xpc3RpbmZvL3lvY3RvPC9hPjxicj4NCjwvZm9udD48L3NwYW4+PC9ibG9j
a3F1b3RlPjwvZGl2Pjxicj48L2Rpdj48L2Rpdj4NCg==

--00000000000047a1a50572cabb31--
