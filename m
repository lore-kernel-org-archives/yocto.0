Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D05EE00927; Mon,  8 Dec 2014 00:22:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E694FE00916
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 00:22:44 -0800 (PST)
Received: by mail-ie0-f180.google.com with SMTP id rp18so3944597iec.25
	for <yocto@yoctoproject.org>; Mon, 08 Dec 2014 00:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3ceCLvGh7BNKKi9dypOcovasfDqE3d/3PRT7VmMKsFQ=;
	b=Pn9ZB5W4l+9BsGxh/as8ClrwGlxfO7WK/ZdZ5UrC/aVeWUPDpuAmasZi96RhFq1kwW
	k7WJ0+ltcMtH8eoOFsiWWsbpUbShaY0hblw2cwlKRWou2CCu1Z0hpbVcRb4khdmdfpqI
	MqJ0ZmrHxGGsfPamcmdz9oGFRV2EEKm0upcccMchdpKPB/9aUcIAIMaX78oZhKm7ZLal
	2eUnlo+Ivg3geZxGoq2B2XrfePoiAJyCU3uGK9yiAyXGq7T6doS/dXY9aTxpyxoB8iAr
	Q0Mf2xaYnddzhCwPdtT5obrN568MvIKLgziP8G+rYk4yLsOywnwT9aLXn6Pj68HHYXRb
	CcZA==
MIME-Version: 1.0
X-Received: by 10.50.79.232 with SMTP id m8mr13550779igx.11.1418026963694;
	Mon, 08 Dec 2014 00:22:43 -0800 (PST)
Received: by 10.107.10.7 with HTTP; Mon, 8 Dec 2014 00:22:43 -0800 (PST)
In-Reply-To: <CAAA4K6J_MjbyeL7Js1hw5C=7BqKFger1sanOtxjCe6tLBaQhvQ@mail.gmail.com>
References: <CAKGbVbu0YsX18JUF89ec-6M8yUCHnfAM5B7ERQNiAYHTALJ8Bw@mail.gmail.com>
	<CAAA4K6J_MjbyeL7Js1hw5C=7BqKFger1sanOtxjCe6tLBaQhvQ@mail.gmail.com>
Date: Mon, 8 Dec 2014 16:22:43 +0800
Message-ID: <CAKGbVbuRpjsk2TViL=yhLOnp9Sguw3f29HHLaXE-xtt9Pud5HA@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: Jegan Chandru <pcjegan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: prelink & mklibs problem
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
X-List-Received-Date: Mon, 08 Dec 2014 08:22:49 -0000
Content-Type: multipart/alternative; boundary=089e013a060673fa6c0509b021b1

--089e013a060673fa6c0509b021b1
Content-Type: text/plain; charset=UTF-8

Thanks for your reply. I almost give up.

You mean that current yocto build doesn't support hard float ABI prelink,
and the prelink source code needs to
be modified to use ld-linux-armhf.so.3?

So this problem affect all armhf build of yocto, in other words prelink
doesn't work for yocto armhf at all now?

Regards,
Qiang

On Mon, Dec 8, 2014 at 3:28 PM, Jegan Chandru <pcjegan@gmail.com> wrote:

> Hi,
>
> I think it has to do with the ld-linux-armhf.so.3. May be you should tell
> prelink that you have hard float ARM ABI to prelink for, than ld-linux.so.3
> . It means you need to add ld-linux-armhf.so.3 as a dynamic linker.
> You should patch the prelink source to get this done.
>
> HTH.
>
> -JC
>
>
>
> On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu <yuq825@gmail.com> wrote:
>
>> Hi all,
>>
>> I'm building a image with local.conf:
>> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>>
>> but I think prelink does nothing on my image, because the MD5SUM is the
>> same before and after
>> the prelink stage. The mklibs stage is also strange not print anything.
>> How to make prelink and
>> mklibs really work?
>>
>> Here is the log of log.do_rootfs:
>>
>> NOTE: ###### Generate images #######
>> NOTE: Executing mklibs_optimize_image ...
>> DEBUG: Executing shell function mklibs_optimize_image
>> DEBUG: Shell function mklibs_optimize_image finished
>> NOTE: Executing prelink_image ...
>> DEBUG: Executing shell function prelink_image
>> Size before prelinking 49304.
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /sbin/fstab-decode: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>> as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /sbin/bootlogd: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>> dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /sbin/killall5: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>> dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /sbin/init.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>> as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /sbin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>> as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /sbin/shutdown.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>> /lib/ld-linux.so.3 as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /sbin/runlevel.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>> /lib/ld-linux.so.3 as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /usr/sbin/dropbearmulti: Using /lib/ld-linux-armhf.so.3, not
>> /lib/ld-linux.so.3 as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>> /lib/ld-linux.so.3 as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /bin/busybox.suid: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>> as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /bin/busybox.nosuid: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>> as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /usr/bin/utmpdump.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>> /lib/ld-linux.so.3 as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /usr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>> /lib/ld-linux.so.3 as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /usr/bin/last.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>> /lib/ld-linux.so.3 as dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /usr/bin/opkg-cl: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>> dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /usr/bin/bmw: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>> dynamic linker
>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>> /usr/bin/wall.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>> /lib/ld-linux.so.3 as dynamic linker
>> Size after prelinking 49304.
>> DEBUG: Shell function prelink_image finished
>>
>> Regards,
>> Qiang
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
> JCP
>

--089e013a060673fa6c0509b021b1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for your reply. I almost give up.<div><br></div><di=
v>You mean that current yocto build doesn&#39;t support hard float ABI prel=
ink, and the prelink source code needs to=C2=A0</div><div>be modified to us=
e=C2=A0<span style=3D"font-size:13px;font-family:arial,sans-serif">ld-linux=
-armhf.so.3?</span></div><div><span style=3D"font-family:arial,sans-serif">=
<br></span></div><div><span style=3D"font-family:arial,sans-serif">So this =
problem affect all armhf build of yocto, in other words prelink doesn&#39;t=
 work for yocto armhf at all now?</span></div><div><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px"><br></span></div><div><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">Regards,</span></div><div><span =
style=3D"font-family:arial,sans-serif;font-size:13px">Qiang</span></div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Dec 8,=
 2014 at 3:28 PM, Jegan Chandru <span dir=3D"ltr">&lt;<a href=3D"mailto:pcj=
egan@gmail.com" target=3D"_blank">pcjegan@gmail.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">Hi,</div><div c=
lass=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-ser=
if"><br></div><div class=3D"gmail_default"><font face=3D"trebuchet ms, sans=
-serif">I think it has to do with the l</font><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">d-linux-armhf.so.3.=C2=A0</span><span style=
=3D"font-family:arial,sans-serif">May be you should tell prelink that you h=
ave hard float ARM ABI to prelink for, than ld-linux.so.3 . It means you ne=
ed to add ld-linux-armhf.so.3 as a dynamic linker.</span></div><div class=
=3D"gmail_default"><font face=3D"arial, sans-serif">You should patch the pr=
elink source to get this done.</font></div><div class=3D"gmail_default"><fo=
nt face=3D"arial, sans-serif"><br></font></div><div class=3D"gmail_default"=
><font face=3D"arial, sans-serif">HTH.</font></div><div class=3D"gmail_defa=
ult"><font face=3D"arial, sans-serif"><br></font></div><div class=3D"gmail_=
default"><font face=3D"arial, sans-serif">-JC</font></div><div class=3D"gma=
il_default"><font face=3D"arial, sans-serif"><br></font></div><div class=3D=
"gmail_default"><font face=3D"arial, sans-serif"><br></font></div></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"h=
5">On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu <span dir=3D"ltr">&lt;<a href=
=3D"mailto:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a>&gt;</sp=
an> wrote:<br></div></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=3D=
"h5"><div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m building a image w=
ith local.conf:</div><div>USER_CLASSES ?=3D &quot;buildstats image-mklibs i=
mage-prelink&quot;<br></div><div><br></div><div>but I think prelink does no=
thing on my image, because the MD5SUM is the same before and after</div><di=
v>the prelink stage. The mklibs stage is also strange not print anything. H=
ow to make prelink and</div><div>mklibs really work?</div><div><br></div><d=
iv>Here is the log of log.do_rootfs:</div><div><br></div><div><div>NOTE: ##=
#### Generate images #######</div><div>NOTE: Executing mklibs_optimize_imag=
e ...</div><div>DEBUG: Executing shell function mklibs_optimize_image</div>=
<div>DEBUG: Shell function mklibs_optimize_image finished</div><div>NOTE: E=
xecuting prelink_image ...</div><div>DEBUG: Executing shell function prelin=
k_image</div><div>Size before prelinking 49304.</div><div>/opt/yocto/rootfs=
/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/fstab-decode: Using /lib=
/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/o=
pt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/bootlogd:=
 Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</=
div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbi=
n/killall5: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynam=
ic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/pr=
elink: /sbin/init.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-lin=
ux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-l=
inux/usr/sbin/prelink: /sbin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3,=
 not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/s=
ysroots/x86_64-linux/usr/sbin/prelink: /sbin/shutdown.sysvinit: Using /lib/=
ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/op=
t/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/runlevel.s=
ysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic =
linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/preli=
nk: /usr/sbin/dropbearmulti: Using /lib/ld-linux-armhf.so.3, not /lib/ld-li=
nux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-=
linux/usr/sbin/prelink: /bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf=
.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs=
/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /bin/busybox.suid: Using /lib/=
ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/op=
t/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /bin/busybox.nos=
uid: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic link=
er</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: =
/usr/bin/utmpdump.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-lin=
ux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-l=
inux/usr/sbin/prelink: /usr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so=
.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tm=
p/sysroots/x86_64-linux/usr/sbin/prelink: /usr/bin/last.sysvinit: Using /li=
b/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/=
opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/bin/opkg-=
cl: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linke=
r</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /=
usr/bin/bmw: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dyna=
mic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/p=
relink: /usr/bin/wall.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld=
-linux.so.3 as dynamic linker</div><div>Size after prelinking 49304.</div><=
div>DEBUG: Shell function prelink_image finished</div></div><div><br></div>=
<div>Regards,</div><div>Qiang</div><div><br></div></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><span class=3D"HOEnZb"><font color=3D"=
#888888"><br><br clear=3D"all"><div><br></div>-- <br><div>JCP</div>
</font></span></div>
</blockquote></div><br></div>

--089e013a060673fa6c0509b021b1--
