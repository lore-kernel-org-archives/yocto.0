Return-Path: <pcjegan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A6A6E00927; Mon,  8 Dec 2014 01:56:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pcjegan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C8FE008AA
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 01:56:08 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id l18so5737426wgh.40
	for <yocto@yoctoproject.org>; Mon, 08 Dec 2014 01:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=7I+ei4zUzKQgMwtbz5Kl/yfozCYF1F7fWKS7fhPjRHg=;
	b=sXA4nHHGfh54scoIHALfdbOFKv9+vIEE81cjdrAU/zZkfJzgz3CoI7afDJcbIHtLE9
	7zciZD1QIgzuBmuLTb6T5yLKEkI5/WRpj1hCM9XfUl0IAovOGx7NrcOiuBT2kC3APjI7
	/RR3LN5U4lIkU4VzPTLTz8Ujp/L4GR49Nff5zqRJzWitEDKzSDKrFJZ54M94EX+M90oS
	sDBIytA7x05O+i21+ldcCWJAIJRV15AM9XxZs71Jd4WMMlUKYppeH1difGWApy+dACPx
	cldn9OnIAh/pavWRbbbl5l6+3/yxjvETqoa3w4s5vENphdMWAnx0r9szQYMa9o2W023w
	5wAA==
X-Received: by 10.180.88.165 with SMTP id bh5mr22848969wib.77.1418032567484;
	Mon, 08 Dec 2014 01:56:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.180.86.35 with HTTP; Mon, 8 Dec 2014 01:55:47 -0800 (PST)
In-Reply-To: <CAKGbVbuRpjsk2TViL=yhLOnp9Sguw3f29HHLaXE-xtt9Pud5HA@mail.gmail.com>
References: <CAKGbVbu0YsX18JUF89ec-6M8yUCHnfAM5B7ERQNiAYHTALJ8Bw@mail.gmail.com>
	<CAAA4K6J_MjbyeL7Js1hw5C=7BqKFger1sanOtxjCe6tLBaQhvQ@mail.gmail.com>
	<CAKGbVbuRpjsk2TViL=yhLOnp9Sguw3f29HHLaXE-xtt9Pud5HA@mail.gmail.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Mon, 8 Dec 2014 15:25:47 +0530
Message-ID: <CAAA4K6+dayiFaCo07ynMjefPkLjg5_54m2G16VExdUe-TpUYCg@mail.gmail.com>
To: Qiang Yu <yuq825@gmail.com>
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
X-List-Received-Date: Mon, 08 Dec 2014 09:56:20 -0000
Content-Type: multipart/alternative; boundary=f46d044306047706400509b16ffd

--f46d044306047706400509b16ffd
Content-Type: text/plain; charset=UTF-8

I recommend you to file a bug here https://bugzilla.yoctoproject.org/ if
not done already. You may get a proper answer on armhf support there. From
what I see, (someone please correct me if I am wrong), there is no prelink
dynamic link armhf patch. You can also create and submit the patch for
review. AFAIK, you are gonna need to something like below,

.dynamic_linker = "/lib/ld-linux-armhf.so.3"  in arch-arm.c.

This is not tested though. Please do a test yourselves.

-JC

On Mon, Dec 8, 2014 at 1:52 PM, Qiang Yu <yuq825@gmail.com> wrote:

> Thanks for your reply. I almost give up.
>
> You mean that current yocto build doesn't support hard float ABI prelink,
> and the prelink source code needs to
> be modified to use ld-linux-armhf.so.3?
>
> So this problem affect all armhf build of yocto, in other words prelink
> doesn't work for yocto armhf at all now?
>
> Regards,
> Qiang
>
> On Mon, Dec 8, 2014 at 3:28 PM, Jegan Chandru <pcjegan@gmail.com> wrote:
>
>> Hi,
>>
>> I think it has to do with the ld-linux-armhf.so.3. May be you should
>> tell prelink that you have hard float ARM ABI to prelink for, than
>> ld-linux.so.3 . It means you need to add ld-linux-armhf.so.3 as a dynamic
>> linker.
>> You should patch the prelink source to get this done.
>>
>> HTH.
>>
>> -JC
>>
>>
>>
>> On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu <yuq825@gmail.com> wrote:
>>
>>> Hi all,
>>>
>>> I'm building a image with local.conf:
>>> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>>>
>>> but I think prelink does nothing on my image, because the MD5SUM is the
>>> same before and after
>>> the prelink stage. The mklibs stage is also strange not print anything.
>>> How to make prelink and
>>> mklibs really work?
>>>
>>> Here is the log of log.do_rootfs:
>>>
>>> NOTE: ###### Generate images #######
>>> NOTE: Executing mklibs_optimize_image ...
>>> DEBUG: Executing shell function mklibs_optimize_image
>>> DEBUG: Shell function mklibs_optimize_image finished
>>> NOTE: Executing prelink_image ...
>>> DEBUG: Executing shell function prelink_image
>>> Size before prelinking 49304.
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/fstab-decode: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>>> as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/bootlogd: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>>> dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/killall5: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>>> dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/init.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>>> as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>>> as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/shutdown.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/runlevel.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/sbin/dropbearmulti: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /bin/busybox.suid: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>>> as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /bin/busybox.nosuid: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>>> as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/utmpdump.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/last.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/opkg-cl: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>>> dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/bmw: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>>> dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/wall.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> Size after prelinking 49304.
>>> DEBUG: Shell function prelink_image finished
>>>
>>> Regards,
>>> Qiang
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>>
>> --
>> JCP
>>
>
>


-- 
JCP

--f46d044306047706400509b16ffd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif">I recommend you to file a bug here=C2=A0<a href=
=3D"https://bugzilla.yoctoproject.org/">https://bugzilla.yoctoproject.org/<=
/a> if not done already. You may get a proper answer on armhf support there=
. From what I see, (someone please correct me if I am wrong), there is no p=
relink dynamic link armhf patch. You can also create and submit the patch f=
or review. AFAIK, you are gonna need to something like below,</div><div cla=
ss=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif=
"><br></div><div class=3D"gmail_default" style><font face=3D"trebuchet ms, =
sans-serif">.dynamic_linker =3D &quot;/lib/ld-linux-armhf.so.3&quot; =C2=A0=
</font><span style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">in arc=
h-arm.c. =C2=A0</span></div><div class=3D"gmail_default" style><span style=
=3D"font-family:&#39;trebuchet ms&#39;,sans-serif"><br></span></div><div cl=
ass=3D"gmail_default" style><span style=3D"font-family:&#39;trebuchet ms&#3=
9;,sans-serif">This is not tested though. Please do a test yourselves.</spa=
n></div><div class=3D"gmail_default" style><span style=3D"font-family:&#39;=
trebuchet ms&#39;,sans-serif"><br></span></div><div class=3D"gmail_default"=
 style><span style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">-JC</s=
pan></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Mon, Dec 8, 2014 at 1:52 PM, Qiang Yu <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Thanks for your rep=
ly. I almost give up.<div><br></div><div>You mean that current yocto build =
doesn&#39;t support hard float ABI prelink, and the prelink source code nee=
ds to=C2=A0</div><div>be modified to use=C2=A0<span style=3D"font-size:13px=
;font-family:arial,sans-serif">ld-linux-armhf.so.3?</span></div><div><span =
style=3D"font-family:arial,sans-serif"><br></span></div><div><span style=3D=
"font-family:arial,sans-serif">So this problem affect all armhf build of yo=
cto, in other words prelink doesn&#39;t work for yocto armhf at all now?</s=
pan></div><div><span style=3D"font-family:arial,sans-serif;font-size:13px">=
<br></span></div><div><span style=3D"font-family:arial,sans-serif;font-size=
:13px">Regards,</span></div><div><span style=3D"font-family:arial,sans-seri=
f;font-size:13px">Qiang</span></div></div><div class=3D"HOEnZb"><div class=
=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, D=
ec 8, 2014 at 3:28 PM, Jegan Chandru <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:pcjegan@gmail.com" target=3D"_blank">pcjegan@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_=
default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">Hi,</div><=
div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,san=
s-serif"><br></div><div class=3D"gmail_default"><font face=3D"trebuchet ms,=
 sans-serif">I think it has to do with the l</font><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">d-linux-armhf.so.3.=C2=A0</span><span s=
tyle=3D"font-family:arial,sans-serif">May be you should tell prelink that y=
ou have hard float ARM ABI to prelink for, than ld-linux.so.3 . It means yo=
u need to add ld-linux-armhf.so.3 as a dynamic linker.</span></div><div cla=
ss=3D"gmail_default"><font face=3D"arial, sans-serif">You should patch the =
prelink source to get this done.</font></div><div class=3D"gmail_default"><=
font face=3D"arial, sans-serif"><br></font></div><div class=3D"gmail_defaul=
t"><font face=3D"arial, sans-serif">HTH.</font></div><div class=3D"gmail_de=
fault"><font face=3D"arial, sans-serif"><br></font></div><div class=3D"gmai=
l_default"><font face=3D"arial, sans-serif">-JC</font></div><div class=3D"g=
mail_default"><font face=3D"arial, sans-serif"><br></font></div><div class=
=3D"gmail_default"><font face=3D"arial, sans-serif"><br></font></div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div>On Fri,=
 Dec 5, 2014 at 7:41 AM, Qiang Yu <span dir=3D"ltr">&lt;<a href=3D"mailto:y=
uq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a>&gt;</span> wrote:<b=
r></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div><div><div dir=3D"ltr">Hi =
all,<div><br></div><div>I&#39;m building a image with local.conf:</div><div=
>USER_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&quot;<br></d=
iv><div><br></div><div>but I think prelink does nothing on my image, becaus=
e the MD5SUM is the same before and after</div><div>the prelink stage. The =
mklibs stage is also strange not print anything. How to make prelink and</d=
iv><div>mklibs really work?</div><div><br></div><div>Here is the log of log=
.do_rootfs:</div><div><br></div><div><div>NOTE: ###### Generate images ####=
###</div><div>NOTE: Executing mklibs_optimize_image ...</div><div>DEBUG: Ex=
ecuting shell function mklibs_optimize_image</div><div>DEBUG: Shell functio=
n mklibs_optimize_image finished</div><div>NOTE: Executing prelink_image ..=
.</div><div>DEBUG: Executing shell function prelink_image</div><div>Size be=
fore prelinking 49304.</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linu=
x/usr/sbin/prelink: /sbin/fstab-decode: Using /lib/ld-linux-armhf.so.3, not=
 /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysro=
ots/x86_64-linux/usr/sbin/prelink: /sbin/bootlogd: Using /lib/ld-linux-armh=
f.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootf=
s/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/killall5: Using /lib/ld=
-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/=
yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/init.sysvini=
t: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker=
</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /s=
bin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 a=
s dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/=
sbin/prelink: /sbin/shutdown.sysvinit: Using /lib/ld-linux-armhf.so.3, not =
/lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroo=
ts/x86_64-linux/usr/sbin/prelink: /sbin/runlevel.sysvinit: Using /lib/ld-li=
nux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yoc=
to/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/sbin/dropbearmul=
ti: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linke=
r</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /=
bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.=
so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linu=
x/usr/sbin/prelink: /bin/busybox.suid: Using /lib/ld-linux-armhf.so.3, not =
/lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroo=
ts/x86_64-linux/usr/sbin/prelink: /bin/busybox.nosuid: Using /lib/ld-linux-=
armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/r=
ootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/bin/utmpdump.sysvini=
t: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker=
</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /u=
sr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.=
3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/u=
sr/sbin/prelink: /usr/bin/last.sysvinit: Using /lib/ld-linux-armhf.so.3, no=
t /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysr=
oots/x86_64-linux/usr/sbin/prelink: /usr/bin/opkg-cl: Using /lib/ld-linux-a=
rmhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/ro=
otfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/bin/bmw: Using /lib/l=
d-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt=
/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/bin/wall.sys=
vinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic li=
nker</div><div>Size after prelinking 49304.</div><div>DEBUG: Shell function=
 prelink_image finished</div></div><div><br></div><div>Regards,</div><div>Q=
iang</div><div><br></div></div>
<br></div></div><span><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><span><font color=3D"#888888"><br><br =
clear=3D"all"><div><br></div>-- <br><div>JCP</div>
</font></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature">JCP</div>
</div>

--f46d044306047706400509b16ffd--
