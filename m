Return-Path: <nicolas_salmin@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBD93E00C6A; Tue, 17 Apr 2018 01:55:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E6A3E00994
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 01:55:23 -0700 (PDT)
Received: by mail-wr0-f180.google.com with SMTP id l49so33201840wrl.4
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 01:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=YDctJCte5wKByvBPjWNM4SoTbjwR0jm+zsjTfA4wu3E=;
	b=0xEdgVekWUGfbqcNijkOxx43YoMND9zjp1Ay10lJR0Mx+UQliPq3LtnBVQlq0x2tj2
	aWsxc4r6ctGwXhs/wmWgKw2FFtDZSjAiPLtIZYv78FuUNSS4D5RkzBsWr7ommc+SaovZ
	sfRuQ3JtpqBmc2UTB5BEPdkr1FnSdp8K+A71v6Q/vOjJqBBYIDbOnkAT3WNXN8ctH6A1
	8Dce/wNnwmpbNcBCpwllStIRhYJsRF9TMY7mWYuHYjoKvK2/AJgVZHbXBuawCZZRIF3r
	EceIbvBKbrjexUAEfWGDaf/oPEGvmMmznW7SU+QhhBsVmhPQXxrp94BB8zsLDPeud2Wz
	3c/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YDctJCte5wKByvBPjWNM4SoTbjwR0jm+zsjTfA4wu3E=;
	b=qVM3K5iNYv7sgr0INvqhPHrRZoetJ0gy/PhOdIqfGFQt8ukHigJdXrMNIuLjcIlRuS
	98b5YDpbEjszDODe15zthaPbYuZ3dA1cAWi3VoA8BDbtfgs+tL6nu2mewWimt1vN1y4z
	4+Tv1XfQSlvmUK3PA1hRJx2T4PC6CsTOoqSYL3fRihrQmMYuQWoWtHqNGiDRbxv589my
	ChpOZJzgjOXT1MBuOC+LrBfphwntyevxYYkInZ8cyYMmE5wRYvyF2FC0Sk0uzsBJWTWK
	/X5ajI+WAuDlVKlEJob6yMWOO3hdN5aUJX0PnSpC9LA0nqtlxsqh+0b3PAvmJh4fyjY+
	Cbzw==
X-Gm-Message-State: ALQs6tAwSZiAZy1+ILFrO6Q//pjS0RR6SPA+iifIRuGQS5kNkIol5ylm
	eM71Mb/TeQjrjP9/MIAsGaCTSoika3k1s4xZ9HgeMti3TMU=
X-Google-Smtp-Source: AIpwx48BjtA1howElr8DwTiYrWOtr5AcZ9SIK/CnsFeCwB9bHChUEk8YuCaMMTCAvxDIxL2jkS9jnhZqKkdcJt8RAyw=
X-Received: by 10.80.165.246 with SMTP id b51mr2010418edc.147.1523955322855;
	Tue, 17 Apr 2018 01:55:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.194.194 with HTTP; Tue, 17 Apr 2018 01:55:22 -0700 (PDT)
From: Nicolas Salmin <nicolas_salmin@trimble.com>
Date: Tue, 17 Apr 2018 10:55:22 +0200
Message-ID: <CAGTsOqOb1jEyVz9EpgkqyOg=7GiNvgcE2qmpvyMBXztNoMbgMg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Prelink compilation for ZCU102
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
X-List-Received-Date: Tue, 17 Apr 2018 08:55:24 -0000
Content-Type: multipart/alternative; boundary="f403045c3c1eac530c056a077f46"

--f403045c3c1eac530c056a077f46
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello guys,

Someone here have some information to build prelink recipe for ZCU102 board
because i'm not able to do it ...

Hello guys,

Someone here have some information to build prelink recipe for ZCU102 board
because i'm not able to do it ...

ERROR: prelink-1.0+gitAUTOINC+aa2985eefa-r0 do_unpack: Fetcher failure:
Fetch command export PSEUDO_DISABLED=3D1; export
DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-KTbsI0WgZ2"; export
SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
PATH=3D"/private/path/UltraScale/zcu102/yocto/build/tmp/sysroots-uninative/=
x86_64-linux/usr/bin:/private/path/UltraScale/zcu102/yocto/poky/scripts:/pr=
ivate/path/UltraScale/zcu102/yocto/build/tmp/work/aarch64-poky-linux/prelin=
k/1.0+gitAUTOINC+aa2985eefa-r0/recipe-sysroot-native/usr/bin/aarch64-poky-l=
inux:/private/path/UltraScale/zcu102/yocto/build/tmp/work/aarch64-poky-linu=
x/prelink/1.0+gitAUTOINC+aa2985eefa-r0/recipe-sysroot/usr/bin/crossscripts:=
/private/path/UltraScale/zcu102/yocto/build/tmp/work/aarch64-poky-linux/pre=
link/1.0+gitAUTOINC+aa2985eefa-r0/recipe-sysroot-native/usr/sbin:/private/p=
ath/UltraScale/zcu102/yocto/build/tmp/work/aarch64-poky-linux/prelink/1.0+g=
itAUTOINC+aa2985eefa-r0/recipe-sysroot-native/usr/bin:/private/path/UltraSc=
ale/zcu102/yocto/build/tmp/work/aarch64-poky-linux/prelink/1.0+gitAUTOINC+a=
a2985eefa-r0/recipe-sysroot-native/sbin:/private/path/UltraScale/zcu102/yoc=
to/build/tmp/work/aarch64-poky-linux/prelink/1.0+gitAUTOINC+aa2985eefa-r0/r=
ecipe-sysroot-native/bin:/private/path/UltraScale/zcu102/yocto/poky/bitbake=
/bin:/private/path/UltraScale/zcu102/yocto/build/tmp/hosttools";
export HOME=3D"/home/nicolas"; git -c core.fsyncobjectfiles=3D0 checkout -B
cross_prelink aa2985eefa94625037ad31e9dc5207fd5bf31ca7 failed with exit
code 128, output:
fatal: reference is not a tree: aa2985eefa94625037ad31e9dc5207fd5bf31ca7

ERROR: prelink-1.0+gitAUTOINC+aa2985eefa-r0 do_unpack: Function failed:
base_do_unpack
ERROR: Logfile of failure stored in:
/private/path/UltraScale/zcu102/yocto/build/tmp/work/aarch64-poky-linux/pre=
link/1.0+gitAUTOINC+aa2985eefa-r0/temp/log.do_unpack.85986
ERROR: Task
(/private/path/UltraScale/zcu102/yocto/poky/meta/recipes-devtools/prelink/p=
relink_git.bb:do_unpack)
failed with exit code '1'


I don't know if it's because of the target is an aarch64 architecture or
not ...

Any advise ?
Cheers,
Nicolas

--f403045c3c1eac530c056a077f46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello guys,<div><br></div><div>Someone here have some info=
rmation to build prelink recipe for ZCU102 board because i&#39;m not able t=
o do it ...</div><div><br></div><div><div>Hello guys,</div><div><br></div><=
div>Someone here have some information to build prelink recipe for ZCU102 b=
oard because i&#39;m not able to do it ...</div><div><br></div><div>ERROR: =
prelink-1.0+gitAUTOINC+aa2985eefa-r0 do_unpack: Fetcher failure: Fetch comm=
and export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D&quot;uni=
x:abstract=3D/tmp/dbus-KTbsI0WgZ2&quot;; export SSH_AUTH_SOCK=3D&quot;/run/=
user/1000/keyring/ssh&quot;; export PATH=3D&quot;/private/path/UltraScale/z=
cu102/yocto/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/private/path=
/UltraScale/zcu102/yocto/poky/scripts:/private/path/UltraScale/zcu102/yocto=
/build/tmp/work/aarch64-poky-linux/prelink/1.0+gitAUTOINC+aa2985eefa-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux:/private/path/UltraScale/zcu1=
02/yocto/build/tmp/work/aarch64-poky-linux/prelink/1.0+gitAUTOINC+aa2985eef=
a-r0/recipe-sysroot/usr/bin/crossscripts:/private/path/UltraScale/zcu102/yo=
cto/build/tmp/work/aarch64-poky-linux/prelink/1.0+gitAUTOINC+aa2985eefa-r0/=
recipe-sysroot-native/usr/sbin:/private/path/UltraScale/zcu102/yocto/build/=
tmp/work/aarch64-poky-linux/prelink/1.0+gitAUTOINC+aa2985eefa-r0/recipe-sys=
root-native/usr/bin:/private/path/UltraScale/zcu102/yocto/build/tmp/work/aa=
rch64-poky-linux/prelink/1.0+gitAUTOINC+aa2985eefa-r0/recipe-sysroot-native=
/sbin:/private/path/UltraScale/zcu102/yocto/build/tmp/work/aarch64-poky-lin=
ux/prelink/1.0+gitAUTOINC+aa2985eefa-r0/recipe-sysroot-native/bin:/private/=
path/UltraScale/zcu102/yocto/poky/bitbake/bin:/private/path/UltraScale/zcu1=
02/yocto/build/tmp/hosttools&quot;; export HOME=3D&quot;/home/nicolas&quot;=
; git -c core.fsyncobjectfiles=3D0 checkout -B cross_prelink aa2985eefa9462=
5037ad31e9dc5207fd5bf31ca7 failed with exit code 128, output:</div><div>fat=
al: reference is not a tree: aa2985eefa94625037ad31e9dc5207fd5bf31ca7</div>=
<div><br></div><div>ERROR: prelink-1.0+gitAUTOINC+aa2985eefa-r0 do_unpack: =
Function failed: base_do_unpack</div><div>ERROR: Logfile of failure stored =
in: /private/path/UltraScale/zcu102/yocto/build/tmp/work/aarch64-poky-linux=
/prelink/1.0+gitAUTOINC+aa2985eefa-r0/temp/log.do_unpack.85986</div><div>ER=
ROR: Task (/private/path/UltraScale/zcu102/yocto/poky/meta/recipes-devtools=
/prelink/prelink_git.bb:do_unpack) failed with exit code &#39;1&#39;</div><=
/div><div><br></div><div><br></div><div>I don&#39;t know if it&#39;s becaus=
e of the target is an aarch64 architecture or not ...</div><div><br></div><=
div>Any advise ?</div><div>Cheers,</div><div>Nicolas</div></div>

--f403045c3c1eac530c056a077f46--
