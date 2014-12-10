Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E58AE0092E; Tue,  9 Dec 2014 18:41:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15931E00924
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 18:41:29 -0800 (PST)
Received: by mail-ig0-f178.google.com with SMTP id hl2so2150865igb.5
	for <yocto@yoctoproject.org>; Tue, 09 Dec 2014 18:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TA6eVAnK8PjpC3OOTFD9UL1N26lKxh+S/WsIn+LaoXo=;
	b=U7jg4y1Vn0PMLYog1FU7Pc2rsaOKNLR0ql1/KY1Moz09rns5o7PyIJJzhuMA7D82cj
	OnNC3MkZ76L+T5kbhO57cH+y/6Q4sTetCktc8OFOhgdPWEI3+oYFRnB0pM+O/EMdUj7E
	n86ZtPMROa2kyMdBKck5Z2a/QHABkgGhV+bRYK9mmefdC0dSFM/sp/Wvyl9ieQSCG0kf
	N8Jhc9MqSEBnWHC0jhmpKBDzXMtocIznyLfLRZYqc7eK22kDIQRGwav0DRUxsqVDIcF/
	ryPZKCTAFJRaqD33k5TEHtgIvkwP4H+hxWIFeDBsTqhZPTXjW7MgygGSjW/r1StfrAh8
	Y/Ow==
MIME-Version: 1.0
X-Received: by 10.50.35.195 with SMTP id k3mr5799267igj.11.1418179289192; Tue,
	09 Dec 2014 18:41:29 -0800 (PST)
Received: by 10.107.10.7 with HTTP; Tue, 9 Dec 2014 18:41:29 -0800 (PST)
In-Reply-To: <54871A7E.1050806@windriver.com>
References: <CAKGbVbu0YsX18JUF89ec-6M8yUCHnfAM5B7ERQNiAYHTALJ8Bw@mail.gmail.com>
	<CAAA4K6J_MjbyeL7Js1hw5C=7BqKFger1sanOtxjCe6tLBaQhvQ@mail.gmail.com>
	<CAKGbVbuRpjsk2TViL=yhLOnp9Sguw3f29HHLaXE-xtt9Pud5HA@mail.gmail.com>
	<CAAA4K6+dayiFaCo07ynMjefPkLjg5_54m2G16VExdUe-TpUYCg@mail.gmail.com>
	<54871A7E.1050806@windriver.com>
Date: Wed, 10 Dec 2014 10:41:29 +0800
Message-ID: <CAKGbVbv4-orudnvHJYBUZy25MX96Rx2=DEahEDUFxToPOwediQ@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
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
X-List-Received-Date: Wed, 10 Dec 2014 02:41:33 -0000
Content-Type: multipart/alternative; boundary=001a1134af1ac2a23b0509d3986f

--001a1134af1ac2a23b0509d3986f
Content-Type: text/plain; charset=UTF-8

I have submitted a bug here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7056

Regards,
Qiang

On Tue, Dec 9, 2014 at 11:51 PM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 12/8/14, 3:55 AM, Jegan Chandru wrote:
>
>> I recommend you to file a bug here https://bugzilla.yoctoproject.org/ if
>> not
>> done already. You may get a proper answer on armhf support there. From
>> what I
>> see, (someone please correct me if I am wrong), there is no prelink
>> dynamic link
>> armhf patch. You can also create and submit the patch for review. AFAIK,
>> you are
>> gonna need to something like below,
>>
>> .dynamic_linker = "/lib/ld-linux-armhf.so.3" in arch-arm.c.
>>
>> This is not tested though. Please do a test yourselves.
>>
>
> See: http://marc.info/?l=fedora-arm&m=135417053128837&w=2
>
> Nobody had requested prelink support for armhf up to this point.
>
> Open an enhancement / bug and assign it to me.  I'll do what I can to
> integrate the patch officially.
>
> I had been waiting for the prelink upstream to merge this, but they never
> bothered to, so I'll have to make it a Yocto Project 'cross-prelink'
> specific path.
>
> --Mark
>
>  -JC
>>
>> On Mon, Dec 8, 2014 at 1:52 PM, Qiang Yu <yuq825@gmail.com
>> <mailto:yuq825@gmail.com>> wrote:
>>
>>     Thanks for your reply. I almost give up.
>>
>>     You mean that current yocto build doesn't support hard float ABI
>> prelink,
>>     and the prelink source code needs to
>>     be modified to use ld-linux-armhf.so.3?
>>
>>     So this problem affect all armhf build of yocto, in other words
>> prelink
>>     doesn't work for yocto armhf at all now?
>>
>>     Regards,
>>     Qiang
>>
>>     On Mon, Dec 8, 2014 at 3:28 PM, Jegan Chandru <pcjegan@gmail.com
>>     <mailto:pcjegan@gmail.com>> wrote:
>>
>>         Hi,
>>
>>         I think it has to do with the ld-linux-armhf.so.3. May be you
>> should
>>         tell prelink that you have hard float ARM ABI to prelink for, than
>>         ld-linux.so.3 . It means you need to add ld-linux-armhf.so.3 as a
>>         dynamic linker.
>>         You should patch the prelink source to get this done.
>>
>>         HTH.
>>
>>         -JC
>>
>>
>>
>>         On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu <yuq825@gmail.com
>>         <mailto:yuq825@gmail.com>> wrote:
>>
>>             Hi all,
>>
>>             I'm building a image with local.conf:
>>             USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>>
>>             but I think prelink does nothing on my image, because the
>> MD5SUM is
>>             the same before and after
>>             the prelink stage. The mklibs stage is also strange not print
>>             anything. How to make prelink and
>>             mklibs really work?
>>
>>             Here is the log of log.do_rootfs:
>>
>>             NOTE: ###### Generate images #######
>>             NOTE: Executing mklibs_optimize_image ...
>>             DEBUG: Executing shell function mklibs_optimize_image
>>             DEBUG: Shell function mklibs_optimize_image finished
>>             NOTE: Executing prelink_image ...
>>             DEBUG: Executing shell function prelink_image
>>             Size before prelinking 49304.
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /sbin/fstab-decode: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /sbin/bootlogd: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /sbin/killall5: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /sbin/init.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /sbin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /sbin/shutdown.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /sbin/runlevel.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /usr/sbin/dropbearmulti: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /bin/busybox.suid: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /bin/busybox.nosuid: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /usr/bin/utmpdump.sysvinit: Using /lib/ld-linux-armhf.so.3,
>> not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /usr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /usr/bin/last.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /usr/bin/opkg-cl: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /usr/bin/bmw: Using /lib/ld-linux-armhf.so.3, not
>> /lib/ld-linux.so.3
>>             as dynamic linker
>>             /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>             /usr/bin/wall.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>             /lib/ld-linux.so.3 as dynamic linker
>>             Size after prelinking 49304.
>>             DEBUG: Shell function prelink_image finished
>>
>>             Regards,
>>             Qiang
>>
>>
>>             --
>>             _______________________________________________
>>             yocto mailing list
>>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>             https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>>         --
>>         JCP
>>
>>
>>
>>
>>
>> --
>> JCP
>>
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1134af1ac2a23b0509d3986f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have submitted a bug here:<div><a href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D7056">https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D7056</a><br></div><div><br></div><div>Regards,</div><d=
iv>Qiang</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Tue, Dec 9, 2014 at 11:51 PM, Mark Hatle <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:mark.hatle@windriver.com" target=3D"_blank">mark.hatle@windrive=
r.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D"">On 12/8/14, 3:55 AM, Jegan Chandru wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I recommend you to file a bug here <a href=3D"https://bugzilla.yoctoproject=
.org/" target=3D"_blank">https://bugzilla.yoctoproject.<u></u>org/</a> if n=
ot<br>
done already. You may get a proper answer on armhf support there. From what=
 I<br>
see, (someone please correct me if I am wrong), there is no prelink dynamic=
 link<br>
armhf patch. You can also create and submit the patch for review. AFAIK, yo=
u are<br>
gonna need to something like below,<br>
<br>
.dynamic_linker =3D &quot;/lib/ld-linux-armhf.so.3&quot; in arch-arm.c.<br>
<br>
This is not tested though. Please do a test yourselves.<br>
</blockquote>
<br></span>
See: <a href=3D"http://marc.info/?l=3Dfedora-arm&amp;m=3D135417053128837&am=
p;w=3D2" target=3D"_blank">http://marc.info/?l=3Dfedora-<u></u>arm&amp;m=3D=
135417053128837&amp;w=3D2</a><br>
<br>
Nobody had requested prelink support for armhf up to this point.<br>
<br>
Open an enhancement / bug and assign it to me.=C2=A0 I&#39;ll do what I can=
 to integrate the patch officially.<br>
<br>
I had been waiting for the prelink upstream to merge this, but they never b=
othered to, so I&#39;ll have to make it a Yocto Project &#39;cross-prelink&=
#39; specific path.<br>
<br>
--Mark<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span class=3D"">
-JC<br>
<br>
On Mon, Dec 8, 2014 at 1:52 PM, Qiang Yu &lt;<a href=3D"mailto:yuq825@gmail=
.com" target=3D"_blank">yuq825@gmail.com</a><br></span><span class=3D"">
&lt;mailto:<a href=3D"mailto:yuq825@gmail.com" target=3D"_blank">yuq825@gma=
il.com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 Thanks for your reply. I almost give up.<br>
<br>
=C2=A0 =C2=A0 You mean that current yocto build doesn&#39;t support hard fl=
oat ABI prelink,<br>
=C2=A0 =C2=A0 and the prelink source code needs to<br>
=C2=A0 =C2=A0 be modified to use ld-linux-armhf.so.3?<br>
<br>
=C2=A0 =C2=A0 So this problem affect all armhf build of yocto, in other wor=
ds prelink<br>
=C2=A0 =C2=A0 doesn&#39;t work for yocto armhf at all now?<br>
<br>
=C2=A0 =C2=A0 Regards,<br>
=C2=A0 =C2=A0 Qiang<br>
<br>
=C2=A0 =C2=A0 On Mon, Dec 8, 2014 at 3:28 PM, Jegan Chandru &lt;<a href=3D"=
mailto:pcjegan@gmail.com" target=3D"_blank">pcjegan@gmail.com</a><br></span=
><span class=3D"">
=C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:pcjegan@gmail.com" target=3D"_bl=
ank">pcjegan@gmail.com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I think it has to do with the ld-linux-armhf.so=
.3. May be you should<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tell prelink that you have hard float ARM ABI t=
o prelink for, than<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ld-linux.so.3 . It means you need to add ld-lin=
ux-armhf.so.3 as a<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dynamic linker.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 You should patch the prelink source to get this=
 done.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 HTH.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -JC<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu &lt;<a=
 href=3D"mailto:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a><br=
></span><div><div class=3D"h5">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:yuq825@gmail.com" =
target=3D"_blank">yuq825@gmail.com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi all,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I&#39;m building a image with loc=
al.conf:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 USER_CLASSES ?=3D &quot;buildstat=
s image-mklibs image-prelink&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 but I think prelink does nothing =
on my image, because the MD5SUM is<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 the same before and after<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 the prelink stage. The mklibs sta=
ge is also strange not print<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 anything. How to make prelink and=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mklibs really work?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Here is the log of log.do_rootfs:=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NOTE: ###### Generate images ####=
###<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NOTE: Executing mklibs_optimize_i=
mage ...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DEBUG: Executing shell function m=
klibs_optimize_image<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DEBUG: Shell function mklibs_opti=
mize_image finished<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NOTE: Executing prelink_image ...=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DEBUG: Executing shell function p=
relink_image<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Size before prelinking 49304.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /sbin/fstab-decode: Using /lib/ld=
-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /sbin/bootlogd: Using /lib/ld-lin=
ux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /sbin/killall5: Using /lib/ld-lin=
ux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /sbin/init.sysvinit: Using /lib/l=
d-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /sbin/halt.sysvinit: Using /lib/l=
d-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /sbin/shutdown.sysvinit: Using /l=
ib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /sbin/runlevel.sysvinit: Using /l=
ib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/sbin/dropbearmulti: Using /l=
ib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /bin/mountpoint.sysvinit: Using /=
lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /bin/busybox.suid: Using /lib/ld-=
linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /bin/busybox.nosuid: Using /lib/l=
d-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/bin/utmpdump.sysvinit: Using=
 /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/bin/mesg.sysvinit: Using /li=
b/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/bin/last.sysvinit: Using /li=
b/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/bin/opkg-cl: Using /lib/ld-l=
inux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/bin/bmw: Using /lib/ld-linux=
-armhf.so.3, not /lib/ld-linux.so.3<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 as dynamic linker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/yocto/rootfs/tmp/<u></u>sysr=
oots/x86_64-linux/usr/<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/bin/wall.sysvinit: Using /li=
b/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-linux.so.3 as dynamic lin=
ker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Size after prelinking 49304.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DEBUG: Shell function prelink_ima=
ge finished<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Regards,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Qiang<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ______________________________<u>=
</u>_________________<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yocto mailing list<br></div></div=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproj=
ect.org" target=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D=
"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a=
><u></u>&gt;<span class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctopro=
ject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.<u></=
u>org/listinfo/yocto</a><br>
<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 JCP<br>
<br>
<br>
<br>
<br>
<br>
--<br>
JCP<br>
<br>
<br>
</span></blockquote><div class=3D"HOEnZb"><div class=3D"h5">
<br>
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--001a1134af1ac2a23b0509d3986f--
