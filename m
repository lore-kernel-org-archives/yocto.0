Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 317F7E00992; Thu, 11 Dec 2014 22:57:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,TRACKER_ID autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	*  1.3 TRACKER_ID BODY: Incorporates a tracking ID number
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9CB3E0083A
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 22:57:38 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id y20so6378014ier.32
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 22:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=OoCfsP7N6D4oAF6oEf3LakeyE+afrBKbwUt2glOOJpo=;
	b=nasu136jUdwkc9iLJC1CpLeMy1tNfdpbE3fjFC8mNnJKrzHUTGRuc3CezMIuRGwFv7
	ogRWvm//LNH7WjPmRkISdSZfQe7UAx/X3xreZB4Vfd6MiDqka3cu5pkw68nlM1RHVFa/
	c+tm5FLOznwEHG6q8vjGYEFTbpKA9ncUSG+gY0Zch9HHnzjyxB4dj6tSMWGyGY0ge+ch
	WnzxizYUdFS8VBSpRFkC4Sk9gvhcq5x6bS5bK+CPbg6F1JvKsnSjxW4zVY3pylYvxu03
	nbFI9okbOG5taU8uGQzov5m2iBrGz94V+R3QajJ/49yO8tpBRk6dj6bVERKMSoSymhEp
	1H9w==
MIME-Version: 1.0
X-Received: by 10.42.96.195 with SMTP id k3mr2483818icn.7.1418367458106; Thu,
	11 Dec 2014 22:57:38 -0800 (PST)
Received: by 10.107.10.7 with HTTP; Thu, 11 Dec 2014 22:57:38 -0800 (PST)
In-Reply-To: <5488D2C4.4040704@windriver.com>
References: <CAKGbVbu0YsX18JUF89ec-6M8yUCHnfAM5B7ERQNiAYHTALJ8Bw@mail.gmail.com>
	<CAAA4K6J_MjbyeL7Js1hw5C=7BqKFger1sanOtxjCe6tLBaQhvQ@mail.gmail.com>
	<CAKGbVbuRpjsk2TViL=yhLOnp9Sguw3f29HHLaXE-xtt9Pud5HA@mail.gmail.com>
	<CAAA4K6+dayiFaCo07ynMjefPkLjg5_54m2G16VExdUe-TpUYCg@mail.gmail.com>
	<54871A7E.1050806@windriver.com>
	<CAKGbVbv4-orudnvHJYBUZy25MX96Rx2=DEahEDUFxToPOwediQ@mail.gmail.com>
	<5487B76E.7010708@windriver.com> <5488D2C4.4040704@windriver.com>
Date: Fri, 12 Dec 2014 14:57:38 +0800
Message-ID: <CAKGbVbs63PKWSdOk4B53M3iAO4tz1o9wbUQU2ip8tcTphLGJ9A@mail.gmail.com>
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
X-List-Received-Date: Fri, 12 Dec 2014 06:57:52 -0000
Content-Type: multipart/alternative; boundary=20cf303ea6008064d10509ff6865

--20cf303ea6008064d10509ff6865
Content-Type: text/plain; charset=UTF-8

Hi Mark,

I have used the 81bab23a4661fdaaa859325d6d3603811ecf1849 version prelink to
build my image.
Prelink run smoothly without output like before, the image is also
modified, so the prelink works.
My application also run correctly. But how can I make sure the prelink take
effect when I start an
executable?

Here attaches the do_rootfs log:
NOTE: ###### Generate images #######
NOTE: Executing mklibs_optimize_image ...
DEBUG: Executing shell function mklibs_optimize_image
DEBUG: Shell function mklibs_optimize_image finished
NOTE: Executing prelink_image ...
DEBUG: Executing shell function prelink_image
Size before prelinking 49340.
Size after prelinking 49592.
DEBUG: Shell function prelink_image finished

Regards,
Qiang




On Thu, Dec 11, 2014 at 7:09 AM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 12/9/14, 9:01 PM, Mark Hatle wrote:
>
>> On 12/9/14, 8:41 PM, Qiang Yu wrote:
>>
>>> I have submitted a bug here:
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=7056
>>>
>>
>> (Responded in the bug as well...)  I have a test version of the cross
>> prelink
>> with the ARM HF patch available, as commit:
>>
>> 2cde4ff118b5244f5577d9bc585c1ee521740af0
>>
>> To enable it, use the following in your local.conf:
>>
>> SRCREV_pn-prelink = "2cde4ff118b5244f5577d9bc585c1ee521740af0"
>>
>
> That link breaks regular arm prelink, it also missed a patch for the
> prelink-rtld.
>
> Got a new one:
>
> SRCREV_pn-prelink = "81bab23a4661fdaaa859325d6d3603811ecf1849"
>
> --Mark
>
>
>  If this works for you, I'll finish the patch and submit the changes.
>>
>> --Mark
>>
>>  Regards,
>>> Qiang
>>>
>>> On Tue, Dec 9, 2014 at 11:51 PM, Mark Hatle <mark.hatle@windriver.com
>>> <mailto:mark.hatle@windriver.com>> wrote:
>>>
>>>      On 12/8/14, 3:55 AM, Jegan Chandru wrote:
>>>
>>>          I recommend you to file a bug here
>>> https://bugzilla.yoctoproject.__org/
>>>          <https://bugzilla.yoctoproject.org/> if not
>>>          done already. You may get a proper answer on armhf support
>>> there. From
>>>          what I
>>>          see, (someone please correct me if I am wrong), there is no
>>> prelink
>>>          dynamic link
>>>          armhf patch. You can also create and submit the patch for
>>> review. AFAIK,
>>>          you are
>>>          gonna need to something like below,
>>>
>>>          .dynamic_linker = "/lib/ld-linux-armhf.so.3" in arch-arm.c.
>>>
>>>          This is not tested though. Please do a test yourselves.
>>>
>>>
>>>      See: http://marc.info/?l=fedora-__arm&m=135417053128837&w=2
>>>      <http://marc.info/?l=fedora-arm&m=135417053128837&w=2>
>>>
>>>      Nobody had requested prelink support for armhf up to this point.
>>>
>>>      Open an enhancement / bug and assign it to me.  I'll do what I can
>>> to
>>>      integrate the patch officially.
>>>
>>>      I had been waiting for the prelink upstream to merge this, but they
>>> never
>>>      bothered to, so I'll have to make it a Yocto Project 'cross-prelink'
>>>      specific path.
>>>
>>>      --Mark
>>>
>>>          -JC
>>>
>>>          On Mon, Dec 8, 2014 at 1:52 PM, Qiang Yu <yuq825@gmail.com
>>>          <mailto:yuq825@gmail.com>
>>>          <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>>> wrote:
>>>
>>>               Thanks for your reply. I almost give up.
>>>
>>>               You mean that current yocto build doesn't support hard
>>> float ABI
>>>          prelink,
>>>               and the prelink source code needs to
>>>               be modified to use ld-linux-armhf.so.3?
>>>
>>>               So this problem affect all armhf build of yocto, in other
>>> words prelink
>>>               doesn't work for yocto armhf at all now?
>>>
>>>               Regards,
>>>               Qiang
>>>
>>>               On Mon, Dec 8, 2014 at 3:28 PM, Jegan Chandru <
>>> pcjegan@gmail.com
>>>          <mailto:pcjegan@gmail.com>
>>>               <mailto:pcjegan@gmail.com <mailto:pcjegan@gmail.com>>>
>>> wrote:
>>>
>>>                   Hi,
>>>
>>>                   I think it has to do with the ld-linux-armhf.so.3. May
>>> be you
>>>          should
>>>                   tell prelink that you have hard float ARM ABI to
>>> prelink for, than
>>>                   ld-linux.so.3 . It means you need to add
>>> ld-linux-armhf.so.3 as a
>>>                   dynamic linker.
>>>                   You should patch the prelink source to get this done.
>>>
>>>                   HTH.
>>>
>>>                   -JC
>>>
>>>
>>>
>>>                   On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu <
>>> yuq825@gmail.com
>>>          <mailto:yuq825@gmail.com>
>>>                   <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>>>
>>> wrote:
>>>
>>>                       Hi all,
>>>
>>>                       I'm building a image with local.conf:
>>>                       USER_CLASSES ?= "buildstats image-mklibs
>>> image-prelink"
>>>
>>>                       but I think prelink does nothing on my image,
>>> because the
>>>          MD5SUM is
>>>                       the same before and after
>>>                       the prelink stage. The mklibs stage is also
>>> strange not print
>>>                       anything. How to make prelink and
>>>                       mklibs really work?
>>>
>>>                       Here is the log of log.do_rootfs:
>>>
>>>                       NOTE: ###### Generate images #######
>>>                       NOTE: Executing mklibs_optimize_image ...
>>>                       DEBUG: Executing shell function
>>> mklibs_optimize_image
>>>                       DEBUG: Shell function mklibs_optimize_image
>>> finished
>>>                       NOTE: Executing prelink_image ...
>>>                       DEBUG: Executing shell function prelink_image
>>>                       Size before prelinking 49304.
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /sbin/fstab-decode: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /sbin/bootlogd: Using /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /sbin/killall5: Using /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /sbin/init.sysvinit: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /sbin/halt.sysvinit: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /sbin/shutdown.sysvinit: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /sbin/runlevel.sysvinit: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /usr/sbin/dropbearmulti: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /bin/mountpoint.sysvinit: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /bin/busybox.suid: Using /lib/ld-linux-armhf.so.3,
>>> not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /bin/busybox.nosuid: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /usr/bin/utmpdump.sysvinit: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /usr/bin/mesg.sysvinit: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /usr/bin/last.sysvinit: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /usr/bin/opkg-cl: Using /lib/ld-linux-armhf.so.3,
>>> not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /usr/bin/bmw: Using /lib/ld-linux-armhf.so.3, not
>>>          /lib/ld-linux.so.3
>>>                       as dynamic linker
>>>
>>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__
>>> sbin/prelink:
>>>                       /usr/bin/wall.sysvinit: Using
>>> /lib/ld-linux-armhf.so.3, not
>>>                       /lib/ld-linux.so.3 as dynamic linker
>>>                       Size after prelinking 49304.
>>>                       DEBUG: Shell function prelink_image finished
>>>
>>>                       Regards,
>>>                       Qiang
>>>
>>>
>>>                       --
>>>                       _________________________________________________
>>>                       yocto mailing list
>>>          yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>          <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org
>>> >__>
>>>          https://lists.yoctoproject.__org/listinfo/yocto
>>>          <https://lists.yoctoproject.org/listinfo/yocto>
>>>
>>>
>>>
>>>
>>>                   --
>>>                   JCP
>>>
>>>
>>>
>>>
>>>
>>>          --
>>>          JCP
>>>
>>>
>>>
>>>      --
>>>      _________________________________________________
>>>      yocto mailing list
>>>      yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>      https://lists.yoctoproject.__org/listinfo/yocto
>>>      <https://lists.yoctoproject.org/listinfo/yocto>
>>>
>>>
>>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--20cf303ea6008064d10509ff6865
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mark,<div><br></div><div>I have used the=C2=A0<span sty=
le=3D"font-size:13px;font-family:arial,sans-serif">81bab23a4661fdaaa859325d=
6d360</span><span style=3D"font-size:13px;font-family:arial,sans-serif">3</=
span><u style=3D"font-size:13px;font-family:arial,sans-serif"></u><span sty=
le=3D"font-size:13px;font-family:arial,sans-serif">811ecf1849 version preli=
nk to build my image.</span></div><div><font face=3D"arial, sans-serif">Pre=
link run smoothly without output like before, the image is also modified, s=
o the prelink works.</font></div><div><font face=3D"arial, sans-serif">My a=
pplication also run correctly. But how can I make sure the prelink take eff=
ect when I start an</font></div><div><font face=3D"arial, sans-serif">execu=
table?</font></div><div><font face=3D"arial, sans-serif"><br></font></div><=
div><font face=3D"arial, sans-serif">Here attaches the do_rootfs log:</font=
></div><div><font face=3D"arial, sans-serif"><div>NOTE: ###### Generate ima=
ges #######</div><div>NOTE: Executing mklibs_optimize_image ...</div><div>D=
EBUG: Executing shell function mklibs_optimize_image</div><div>DEBUG: Shell=
 function mklibs_optimize_image finished</div><div>NOTE: Executing prelink_=
image ...</div><div>DEBUG: Executing shell function prelink_image</div><div=
>Size before prelinking 49340.</div><div>Size after prelinking 49592.</div>=
<div>DEBUG: Shell function prelink_image finished</div><div><br></div><div>=
Regards,</div><div>Qiang</div></font></div><div><br></div><div><br></div><d=
iv><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Thu, Dec 11, 2014 at 7:09 AM, Mark Hatle <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mark.hatle@windriver.com" target=3D"_blank">mark.hatle@windriver=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
"">On 12/9/14, 9:01 PM, Mark Hatle wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 12/9/14, 8:41 PM, Qiang Yu wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I have submitted a bug here:<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7056" target=
=3D"_blank">https://bugzilla.yoctoproject.<u></u>org/show_bug.cgi?id=3D7056=
</a><br>
</blockquote>
<br>
(Responded in the bug as well...)=C2=A0 I have a test version of the cross =
prelink<br>
with the ARM HF patch available, as commit:<br>
<br>
2cde4ff118b5244f5577d9bc585c1e<u></u>e521740af0<br>
<br>
To enable it, use the following in your local.conf:<br>
<br>
SRCREV_pn-prelink =3D &quot;<u></u>2cde4ff118b5244f5577d9bc585c1e<u></u>e52=
1740af0&quot;<br>
</blockquote>
<br></span>
That link breaks regular arm prelink, it also missed a patch for the prelin=
k-rtld.<br>
<br>
Got a new one:<br>
<br>
SRCREV_pn-prelink =3D &quot;<u></u>81bab23a4661fdaaa859325d6d3603<u></u>811=
ecf1849&quot;<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
--Mark</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
If this works for you, I&#39;ll finish the patch and submit the changes.<br=
>
<br>
--Mark<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Regards,<br>
Qiang<br>
<br>
On Tue, Dec 9, 2014 at 11:51 PM, Mark Hatle &lt;<a href=3D"mailto:mark.hatl=
e@windriver.com" target=3D"_blank">mark.hatle@windriver.com</a><br>
&lt;mailto:<a href=3D"mailto:mark.hatle@windriver.com" target=3D"_blank">ma=
rk.hatle@windriver.<u></u>com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0On 12/8/14, 3:55 AM, Jegan Chandru wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I recommend you to file a bug here <a hre=
f=3D"https://bugzilla.yoctoproject." target=3D"_blank">https://bugzilla.yoc=
toproject.</a><u></u>__org/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://bugzilla.yoctoproj=
ect.org/" target=3D"_blank">https://bugzilla.<u></u>yoctoproject.org/</a>&g=
t; if not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done already. You may get a proper answer=
 on armhf support there. From<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0what I<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0see, (someone please correct me if I am w=
rong), there is no prelink<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dynamic link<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0armhf patch. You can also create and subm=
it the patch for review. AFAIK,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0you are<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gonna need to something like below,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.dynamic_linker =3D &quot;/lib/ld-linux-a=
rmhf.so.3&quot; in arch-arm.c.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not tested though. Please do a te=
st yourselves.<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0See: <a href=3D"http://marc.info/?l=3Dfedora-__arm&amp;=
m=3D135417053128837&amp;w=3D2" target=3D"_blank">http://marc.info/?l=3Dfedo=
ra-__<u></u>arm&amp;m=3D135417053128837&amp;w=3D2</a><br>
=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://marc.info/?l=3Dfedora-arm&amp;m=
=3D135417053128837&amp;w=3D2" target=3D"_blank">http://marc.info/?l=3Dfedor=
a-<u></u>arm&amp;m=3D135417053128837&amp;w=3D2</a>&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0Nobody had requested prelink support for armhf up to th=
is point.<br>
<br>
=C2=A0 =C2=A0 =C2=A0Open an enhancement / bug and assign it to me.=C2=A0 I&=
#39;ll do what I can to<br>
=C2=A0 =C2=A0 =C2=A0integrate the patch officially.<br>
<br>
=C2=A0 =C2=A0 =C2=A0I had been waiting for the prelink upstream to merge th=
is, but they never<br>
=C2=A0 =C2=A0 =C2=A0bothered to, so I&#39;ll have to make it a Yocto Projec=
t &#39;cross-prelink&#39;<br>
=C2=A0 =C2=A0 =C2=A0specific path.<br>
<br>
=C2=A0 =C2=A0 =C2=A0--Mark<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-JC<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Mon, Dec 8, 2014 at 1:52 PM, Qiang Yu =
&lt;<a href=3D"mailto:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.com<=
/a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yuq825@gmail=
.com" target=3D"_blank">yuq825@gmail.com</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yuq825@gmail=
.com" target=3D"_blank">yuq825@gmail.com</a> &lt;mailto:<a href=3D"mailto:y=
uq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a>&gt;&gt;&gt; wrote:<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Thanks for your reply. I a=
lmost give up.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 You mean that current yoct=
o build doesn&#39;t support hard float ABI<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prelink,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and the prelink source cod=
e needs to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 be modified to use ld-linu=
x-armhf.so.3?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 So this problem affect all=
 armhf build of yocto, in other words prelink<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 doesn&#39;t work for yocto=
 armhf at all now?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Regards,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Qiang<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 On Mon, Dec 8, 2014 at 3:2=
8 PM, Jegan Chandru &lt;<a href=3D"mailto:pcjegan@gmail.com" target=3D"_bla=
nk">pcjegan@gmail.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:pcjegan@gmai=
l.com" target=3D"_blank">pcjegan@gmail.com</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mail=
to:pcjegan@gmail.com" target=3D"_blank">pcjegan@gmail.com</a> &lt;mailto:<a=
 href=3D"mailto:pcjegan@gmail.com" target=3D"_blank">pcjegan@gmail.com</a>&=
gt;&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I think it h=
as to do with the ld-linux-armhf.so.3. May be you<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0should<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tell prelink=
 that you have hard float ARM ABI to prelink for, than<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ld-linux.so.=
3 . It means you need to add ld-linux-armhf.so.3 as a<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dynamic link=
er.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 You should p=
atch the prelink source to get this done.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 HTH.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -JC<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 On Fri, Dec =
5, 2014 at 7:41 AM, Qiang Yu &lt;<a href=3D"mailto:yuq825@gmail.com" target=
=3D"_blank">yuq825@gmail.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yuq825@gmail=
.com" target=3D"_blank">yuq825@gmail.com</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<=
a href=3D"mailto:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a> &=
lt;mailto:<a href=3D"mailto:yuq825@gmail.com" target=3D"_blank">yuq825@gmai=
l.com</a>&gt;&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Hi all,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 I&#39;m building a image with local.conf:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 USER_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 but I think prelink does nothing on my image, because the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MD5SUM is<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 the same before and after<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 the prelink stage. The mklibs stage is also strange not print<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 anything. How to make prelink and<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 mklibs really work?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Here is the log of log.do_rootfs:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 NOTE: ###### Generate images #######<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 NOTE: Executing mklibs_optimize_image ...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 DEBUG: Executing shell function mklibs_optimize_image<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 DEBUG: Shell function mklibs_optimize_image finished<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 NOTE: Executing prelink_image ...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 DEBUG: Executing shell function prelink_image<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Size before prelinking 49304.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /sbin/fstab-decode: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /sbin/bootlogd: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /sbin/killall5: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /sbin/init.sysvinit: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /sbin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /sbin/shutdown.sysvinit: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /sbin/runlevel.sysvinit: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /usr/sbin/dropbearmulti: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /bin/busybox.suid: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /bin/busybox.nosuid: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /usr/bin/utmpdump.sysvinit: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /usr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /usr/bin/last.sysvinit: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /usr/bin/opkg-cl: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /usr/bin/bmw: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/lib/ld-linux.so.3<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 as dynamic linker<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/yocto/rootfs/tmp/__<u></u>sysroots/x=
86_64-linux/usr/__<u></u>sbin/prelink:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /usr/bin/wall.sysvinit: Using /lib/ld-linux-armhf.so.3, not<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /lib/ld-linux.so.3 as dynamic linker<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Size after prelinking 49304.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 DEBUG: Shell function prelink_image finished<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Regards,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Qiang<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 --<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ______________________________<u></u>___________________<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 yocto mailing list<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:yocto@yoctoproject.org"=
 target=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:=
yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>=
&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yocto@yoctop=
roject.org" target=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=
=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org=
</a><u></u>&gt;__&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctoproject." t=
arget=3D"_blank">https://lists.yoctoproject.</a>__<u></u>org/listinfo/yocto=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://lists.yoctoproject=
.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.<u></u>or=
g/listinfo/yocto</a>&gt;<br>
<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 JCP<br>
<br>
<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0JCP<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0--<br>
=C2=A0 =C2=A0 =C2=A0______________________________<u></u>__________________=
_<br>
=C2=A0 =C2=A0 =C2=A0yocto mailing list<br>
=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_bl=
ank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctopro=
ject.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br>
=C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctoproject." target=3D"_blan=
k">https://lists.yoctoproject.</a>__<u></u>org/listinfo/yocto<br>
=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://lists.yoctoproject.org/listinfo/=
yocto" target=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yoc=
to</a>&gt;<br>
<br>
<br>
</blockquote>
<br>
</blockquote>
<br></div></div><div class=3D"HOEnZb"><div class=3D"h5">
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--20cf303ea6008064d10509ff6865--
