Return-Path: <yani.dubin@taitradio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BB76E00823; Tue, 27 Jan 2015 18:13:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B3BCE007BA
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 18:13:15 -0800 (PST)
Received: by mail-oi0-f46.google.com with SMTP id a141so15479927oig.5
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 18:13:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=3mClLKTLUQOqqB3lwWMqhnsJcZlGpdKNoQ3gpy/ClgM=;
	b=XaIntryk4FL6nrU+PkQ4BGdonCVanDPFh2TeMQG9AUOw1hWrGG/AubreLN83pKURQ8
	/8dPriOSw20lWdoRMOfJeATJM6TYNqWHoD3FyQLYrZJuz5kFK1lanePn65BsBABfxqq/
	ZbhOmsM0L8eaogg50sdTz99wEuiWv9BuC9h2JN+sqseSo/NTz10mhVRobMuG5CRmy/UQ
	sr/Wis9QTALLstp458PV6Af1HtXK2IFAfBQe+MRL2J8R3W2h95Z6bHOV7LjoHpExLHSH
	tmeW1nv64dZ2jvKsPPAJEsy8/MkixB1fk/Qpf95f+YK8aCunewhhw2bG6donEriFlGZ4
	dNbw==
X-Gm-Message-State: ALoCoQnROBRsDVOOXeYaeUinqU4yIWpdzYnGeqeSk3uHkZkDbm9nm6eklqbXwLerb5vjjgzOCBcChexi0YDvgsaPFfkPAoIIuQjztv54sAoY848MqPHirHs=
MIME-Version: 1.0
X-Received: by 10.202.188.66 with SMTP id m63mr73011oif.14.1422411194470; Tue,
	27 Jan 2015 18:13:14 -0800 (PST)
Received: by 10.202.228.7 with HTTP; Tue, 27 Jan 2015 18:13:14 -0800 (PST)
In-Reply-To: <CAHSWo-j2kOvKG11=KOCKPkxCY6=43cpedmGtQghyuA5Npg3h=g@mail.gmail.com>
References: <CAHSWo-jFj5Wk1xBvaaY7UegFjQ2XJn_PK0YFcy+pNeLW2ThMpQ@mail.gmail.com>
	<54C7A9EA.7000306@windriver.com>
	<CAHSWo-j2kOvKG11=KOCKPkxCY6=43cpedmGtQghyuA5Npg3h=g@mail.gmail.com>
Date: Wed, 28 Jan 2015 15:13:14 +1300
Message-ID: <CAHSWo-jaoxkR_rtOXt2R8boV_rQQCF2FwddCoB+Ke0GTQaOnKA@mail.gmail.com>
From: Yani Dubin <yani.dubin@taitradio.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: (IIO) ADC freeze on am335x processor on 3.14.26ltsi kernel
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
X-List-Received-Date: Wed, 28 Jan 2015 02:13:23 -0000
Content-Type: multipart/alternative; boundary=001a113dd688f8b5a2050dace984

--001a113dd688f8b5a2050dace984
Content-Type: text/plain; charset=UTF-8

On 28 January 2015 at 12:19, Yani Dubin <yani.dubin@taitradio.com> wrote:

> Since this is my first time reporting a kernel bug, and I now know exactly
> what I am looking for can you give me any pointers on where/how to search
> to see if an upstream fix exists already?
>

I fetched the latest 3.14.y from linux-stable at git.kernel.org and saw no
further changes to this driver, nor anything relevant on the 3.18.y branch
(git log on affected file). I haven't looked outside the stable source tree.

I have assumed that a fix would touch the driver itself. I do not know what
a proper fix would actually look like - presumably my workaround would
break whatever the changeset was fixing for those using the TSC part of the
driver, much the way their fix broke my use of the driver.

bugzilla.kernel.org states that it is for submitting issues with mainline
rather than distribution kernels. Would they consider linux-yocto a
distribution kernel, and I should leave this with you?

Regards,
Yani.

-- 

------------------------------
This email, including any attachments, is only for the intended recipient. 
It is subject to copyright, is confidential and may be the subject of legal 
or other privilege, none of which is waived or lost by reason of this 
transmission.
If you are not an intended recipient, you may not use, disseminate, 
distribute or reproduce such email, any attachments, or any part thereof. 
If you have received a message in error, please notify the sender 
immediately and erase all copies of the message and any attachments.
Unfortunately, we cannot warrant that the email has not been altered or 
corrupted during transmission nor can we guarantee that any email or any 
attachments are free from computer viruses or other conditions which may 
damage or interfere with recipient data, hardware or software. The 
recipient relies upon its own procedures and assumes all risk of use and of 
opening any attachments.
------------------------------

--001a113dd688f8b5a2050dace984
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
8 January 2015 at 12:19, Yani Dubin <span dir=3D"ltr">&lt;<a href=3D"mailto=
:yani.dubin@taitradio.com" target=3D"_blank">yani.dubin@taitradio.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div>Sinc=
e this is my first time reporting a kernel bug, and I now know exactly what=
 I am looking for can you give me any pointers on where/how to search to se=
e if an upstream fix exists already?</div></div></div></div></blockquote><d=
iv><br></div><div>I fetched the latest 3.14.y from linux-stable at <a href=
=3D"http://git.kernel.org">git.kernel.org</a> and saw no further changes to=
 this driver, nor anything relevant on the 3.18.y branch (git log on affect=
ed file). I haven&#39;t looked outside the stable source tree.<br><br>I hav=
e assumed that a fix would touch the driver itself. I do not know what a pr=
oper fix would actually look like - presumably my workaround would break wh=
atever the changeset was fixing for those using the TSC part of the driver,=
 much the way their fix broke my use of the driver.<br><br><a href=3D"http:=
//bugzilla.kernel.org">bugzilla.kernel.org</a> states that it is for submit=
ting issues with mainline rather than distribution kernels. Would they cons=
ider linux-yocto a distribution kernel, and I should leave this with you?<b=
r><br></div><div>Regards,<br>Yani.<br></div></div></div></div>

<br>
<hr><font color=3D"#808080">This email, including any attachments, is only
 for the intended recipient. It is subject to copyright, is confidential
 and may be the subject of legal or other privilege, none of which is=20
waived or lost by reason of this transmission.</font><div><font color=3D"#8=
08080">If
 you are not an intended recipient, you may not use, disseminate,=20
distribute or reproduce such email, any attachments, or any part=20
thereof. If you have received a message in error, please notify the=20
sender immediately and erase all copies of the message and any=20
attachments.</font></div><div><font color=3D"#808080">Unfortunately, we=20
cannot warrant that the email has not been altered or corrupted during=20
transmission nor can we guarantee that any email or any attachments are=20
free from computer viruses or other conditions which may damage or=20
interfere with recipient data, hardware or software. The recipient=20
relies upon its own procedures and assumes all risk of use and of=20
opening any attachments.</font></div><div><hr></div>

--001a113dd688f8b5a2050dace984--
