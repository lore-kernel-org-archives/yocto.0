Return-Path: <czq@bu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 866D1E00BC4; Tue,  6 Jun 2017 16:16:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [128.197.228.175 listed in list.dnswl.org]
Received: from relay75.bu.edu (relay75.bu.edu [128.197.228.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC922E00ACE
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 16:16:18 -0700 (PDT)
X-Envelope-From: czq@bu.edu
Received: from mail-io0-f198.google.com (mail-io0-f198.google.com
	[209.85.223.198])
	by relay75.bu.edu (8.14.3/8.14.3) with ESMTP id v56NG6N1018521
	for <yocto@yoctoproject.org>; Tue, 6 Jun 2017 19:16:06 -0400
Received: by mail-io0-f198.google.com with SMTP id 16so64789iok.9
	for <yocto@yoctoproject.org>; Tue, 06 Jun 2017 16:16:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eBUOYMdzPRCYCSVRNtolEQBJPy39OoDzmpRzfa30F0c=;
	b=aTBJK3xvTX4Wt4i8N71zMwqBdmMD0WcxQTjxKz39le70dTpRakARxPwvQ2gcVvN8Yi
	86zBqdILfpnk3jUXgLgyV6Lv1+NftW2griUwHpG7JIziOgiQPB7tiOKIwdEWK+ULmjqb
	RBmLQX5t1KwU9dpCpsuBuKv2bGB1enFl7sxFMoqhuNjgH/VmuNgv6iwoS4RI9/xhd/2v
	cpdv4HqAEZtR7ZhNNcVhOFsLA16jp2r050nwgLSgI7tNw/hl2wpyNzVSlUyHghYl1xfR
	+iZqcsVE+T75YAHgql3Z9ARfC6p3+zFepiOfdaEv05duuc2p1aICKSC8sX+o/+NZ+uZB
	uNKg==
X-Gm-Message-State: AODbwcBuRSZM8Q6oPmwvlScjLkZ+SCrZz2CxeGW0UE3seIqjp6SSta0H
	5pCuDfZIdObvqeou8+xSmwnnLKm11XEhtG5R4JN77y/yVcazVJBdR6VsTaOc+T7HikcYp1WX3iw
	R7Sqtki1ZfCcloVrz1mW9KoRB
X-Received: by 10.107.149.7 with SMTP id x7mr27068130iod.167.1496790964873;
	Tue, 06 Jun 2017 16:16:04 -0700 (PDT)
X-Received: by 10.107.149.7 with SMTP id x7mr27068105iod.167.1496790964591;
	Tue, 06 Jun 2017 16:16:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.47.38 with HTTP; Tue, 6 Jun 2017 16:16:04 -0700 (PDT)
In-Reply-To: <CACHUKC+XdhM0CwYJ=aXOzF4dfCzE4QnVMEPT9-8M720nLpLb+Q@mail.gmail.com>
References: <CACHUKC+vL6KRQq0r24T8px1SteB4o76gFtVG-CccY2vYDm6ytA@mail.gmail.com>
	<CAJ86T=UKHVqKXtUNTWamKwTd0-oSLWVYn3K06AeUbRwYcHR_fQ@mail.gmail.com>
	<CACHUKC+XdhM0CwYJ=aXOzF4dfCzE4QnVMEPT9-8M720nLpLb+Q@mail.gmail.com>
From: Zhuoqun Cheng <czq@bu.edu>
Date: Tue, 6 Jun 2017 19:16:04 -0400
Message-ID: <CACHUKCKj_yCQtZyRVX7WXSVy9VOhzJ8SmdG+Dk8rH_v9KeKsUg@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: The best way to change target architecture
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
X-List-Received-Date: Tue, 06 Jun 2017 23:16:20 -0000
Content-Type: multipart/alternative; boundary="001a1140f640bfa6f7055152cd1f"

--001a1140f640bfa6f7055152cd1f
Content-Type: text/plain; charset="UTF-8"

Sorry for the previous message. Accidentally sent it out.

Thanks, Andre! That explains a lot.
I got rid of the entire tmp directory and then rebuilt. And unfortunately
I'm still running into the same problem...
I entered the directory shown in the error and did a 'file' on the
binaries. They are all x86-64 binary. Now I wonder why in the
core2-32-intel-commom-poke-linux folder exists 64 bit binaries?
What configuration could I have messed up?

Thanks,
Tom.


On Tue, Jun 6, 2017 at 7:09 PM, Zhuoqun Cheng <czq@bu.edu> wrote:

> Thanks, Andre! That explains a lot.
> I got rid of the entire tmp directory and then rebuilt. And unfortunately
> I'm still running into the same problem...
> Looking at the error again (see below)
>
>
> On Tue, Jun 6, 2017 at 1:30 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>
>> On Tue, Jun 6, 2017 at 5:42 AM, Zhuoqun Cheng <czq@bu.edu> wrote:
>> > Hi Yocto Experts,
>> >
>> > I'm fairly new to Yocto and I've already tried my best to search for
>> > answers, but not happy with what I found.
>> >
>> > So here's the situation I've got:
>> >
>> > I'm using yocto to build the intel aero board image, following this
>> link:
>> > https://github.com/intel-aero/meta-intel-aero/wiki/Quickstar
>> t-Guide#yocto-for-intel-aero
>> >
>> > Everything worked fine, until I wanted to change the target architecture
>> > from the default 64-bit x86 to 32-bit x86. What I did is three steps:
>> > 1. do a clean: bitbake -c clean intel-aero-image
>>
>> Note that running the clean task for the final image doesn't have any
>> affect on the packages which go into that image, so this step doesn't
>> actually do very much.
>>
>> > 2. change configuration, from "require conf/machine/intel-corei7-64.conf"
>> to
>> > "require conf/machine/intel-core2-32.conf" in the file
>> > "meta-intel-aero/conf/machine/intel-aero.conf"
>>
>> Here you are changing the target architecture but keeping the machine
>> name the same. In theory it should work, but it probably isn't well
>> tested...
>>
>> > 3. do a build: bitbake intel-aero-image
>> >
>> > Unfortunately, I got loads of errors, like "ERROR:
>> > linux-yocto-4.4.60+gitAUTOINC+2cc78e92f4-r0 do_package_qa: QA Issue:
>> > Architecture did not match (3 to 62) on
>> > work/core2-32-intel-common-poky-linux/linux-yocto/4.4.60+git
>> AUTOINC+2cc78e92f4-r0/packages-split/kernel-module-gspca-
>> kinect/lib/modules/4.4.60-yocto-standard/kernel/drivers/
>> media/usb/gspca/gspca_kinect.ko
>> > [arch]
>> > "
>> >
>> > Then I tried deleting all the files in the packages-split directory and
>> > rebuilding.
>>
>> Manually deleting anything within a recipe's working directory isn't
>> really recommended. Better to run the clean (or cleansstate) task for
>> that recipe instead, e.g. in this case:
>>
>>   bitbake -c cleansstate linux-yocto
>>
>> > It passed building the kernel (even though failed because some
>> > other package's arch mismatch), but those file I deleted never got
>> generated
>> > again! Now I'm a bit worried.
>>
>> It's quite normal that build artefacts will not be generated again if
>> a recipe has been successfully built once before, since build results
>> are stored in sstate cache. To force a particular recipe to be
>> rebuilt, you can use:
>>
>>   bitbake -c cleansstate <recipe>
>>   bitbake <recipe>
>>
>> > So I guess my question is:
>> > What is the correct procedures to follow to reuse a poky folder (already
>> > built once) for a different target architecture? I'm happy to accept any
>> > links and suggested readings.
>>
>> The normal way to recover from the kind of problems you are seeing
>> would be to remove the entire tmp directory (and if that still doesn't
>> work, then manually run the cleansstate task for any individual
>> recipes which still fail to build).
>>
>> > Thanks a lot!
>> > Tom.
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
>

--001a1140f640bfa6f7055152cd1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:16px">Sorry for the previous=
 message. Accidentally sent it out.</span></div><div><span style=3D"font-si=
ze:16px">=C2=A0</span></div><span style=3D"font-size:16px">Thanks, Andre! T=
hat explains a lot.=C2=A0</span><div style=3D"font-size:16px">I got rid of =
the entire tmp directory and then rebuilt. And unfortunately I&#39;m still =
running into the same problem...=C2=A0</div><div style=3D"font-size:16px">I=
 entered the directory shown in the error and did a &#39;file&#39; on the b=
inaries. They are all x86-64 binary. Now I wonder why in the core2-32-intel=
-commom-poke-linux folder exists 64 bit binaries?</div><div style=3D"font-s=
ize:16px">What configuration could I have messed up?</div><div style=3D"fon=
t-size:16px"><br></div><div style=3D"font-size:16px">Thanks,</div><div styl=
e=3D"font-size:16px">Tom.</div><div style=3D"font-size:16px"><br></div></di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Jun 6, =
2017 at 7:09 PM, Zhuoqun Cheng <span dir=3D"ltr">&lt;<a href=3D"mailto:czq@=
bu.edu" target=3D"_blank">czq@bu.edu</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"ltr">Thanks, Andre! That explains a lot.=C2=
=A0<div>I got rid of the entire tmp directory and then rebuilt. And unfortu=
nately I&#39;m still running into the same problem...=C2=A0</div><div>Looki=
ng at the error again (see below)</div><div><br></div></div><div class=3D"H=
OEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Tue, Jun 6, 2017 at 1:30 PM, Andre McCurdy <span dir=3D"ltr">&lt=
;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>On Tue, Ju=
n 6, 2017 at 5:42 AM, Zhuoqun Cheng &lt;<a href=3D"mailto:czq@bu.edu" targe=
t=3D"_blank">czq@bu.edu</a>&gt; wrote:<br>
</span><span>&gt; Hi Yocto Experts,<br>
&gt;<br>
&gt; I&#39;m fairly new to Yocto and I&#39;ve already tried my best to sear=
ch for<br>
&gt; answers, but not happy with what I found.<br>
&gt;<br>
&gt; So here&#39;s the situation I&#39;ve got:<br>
&gt;<br>
&gt; I&#39;m using yocto to build the intel aero board image, following thi=
s link:<br>
&gt; <a href=3D"https://github.com/intel-aero/meta-intel-aero/wiki/Quicksta=
rt-Guide#yocto-for-intel-aero" rel=3D"noreferrer" target=3D"_blank">https:/=
/github.com/intel-aero/<wbr>meta-intel-aero/wiki/Quickstar<wbr>t-Guide#yoct=
o-for-intel-aero</a><br>
&gt;<br>
&gt; Everything worked fine, until I wanted to change the target architectu=
re<br>
&gt; from the default 64-bit x86 to 32-bit x86. What I did is three steps:<=
br>
&gt; 1. do a clean: bitbake -c clean intel-aero-image<br>
<br>
</span>Note that running the clean task for the final image doesn&#39;t hav=
e any<br>
affect on the packages which go into that image, so this step doesn&#39;t<b=
r>
actually do very much.<br>
<span><br>
&gt; 2. change configuration, from &quot;require conf/machine/intel-corei7-=
64.c<wbr>onf&quot; to<br>
&gt; &quot;require conf/machine/<a href=3D"http://intel-core2-32.co">intel-=
core2-32.co</a><wbr>nf&quot; in the file<br>
&gt; &quot;meta-intel-aero/conf/machine/<wbr>intel-aero.conf&quot;<br>
<br>
</span>Here you are changing the target architecture but keeping the machin=
e<br>
name the same. In theory it should work, but it probably isn&#39;t well<br>
tested...<br>
<span><br>
&gt; 3. do a build: bitbake intel-aero-image<br>
&gt;<br>
&gt; Unfortunately, I got loads of errors, like &quot;ERROR:<br>
&gt; linux-yocto-4.4.60+gitAUTOINC+<wbr>2cc78e92f4-r0 do_package_qa: QA Iss=
ue:<br>
&gt; Architecture did not match (3 to 62) on<br>
&gt; work/core2-32-intel-common-pok<wbr>y-linux/linux-yocto/4.4.60+git<wbr>=
AUTOINC+2cc78e92f4-r0/packages<wbr>-split/kernel-module-gspca-<wbr>kinect/l=
ib/modules/4.4.60-<wbr>yocto-standard/kernel/drivers/<wbr>media/usb/gspca/g=
spca_kinect.<wbr>ko<br>
&gt; [arch]<br>
&gt; &quot;<br>
&gt;<br>
&gt; Then I tried deleting all the files in the packages-split directory an=
d<br>
&gt; rebuilding.<br>
<br>
</span>Manually deleting anything within a recipe&#39;s working directory i=
sn&#39;t<br>
really recommended. Better to run the clean (or cleansstate) task for<br>
that recipe instead, e.g. in this case:<br>
<br>
=C2=A0 bitbake -c cleansstate linux-yocto<br>
<span><br>
&gt; It passed building the kernel (even though failed because some<br>
&gt; other package&#39;s arch mismatch), but those file I deleted never got=
 generated<br>
&gt; again! Now I&#39;m a bit worried.<br>
<br>
</span>It&#39;s quite normal that build artefacts will not be generated aga=
in if<br>
a recipe has been successfully built once before, since build results<br>
are stored in sstate cache. To force a particular recipe to be<br>
rebuilt, you can use:<br>
<br>
=C2=A0 bitbake -c cleansstate &lt;recipe&gt;<br>
=C2=A0 bitbake &lt;recipe&gt;<br>
<span><br>
&gt; So I guess my question is:<br>
&gt; What is the correct procedures to follow to reuse a poky folder (alrea=
dy<br>
&gt; built once) for a different target architecture? I&#39;m happy to acce=
pt any<br>
&gt; links and suggested readings.<br>
<br>
</span>The normal way to recover from the kind of problems you are seeing<b=
r>
would be to remove the entire tmp directory (and if that still doesn&#39;t<=
br>
work, then manually run the cleansstate task for any individual<br>
recipes which still fail to build).<br>
<div class=3D"m_4410438336877702023HOEnZb"><div class=3D"m_4410438336877702=
023h5"><br>
&gt; Thanks a lot!<br>
&gt; Tom.<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a1140f640bfa6f7055152cd1f--
