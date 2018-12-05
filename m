Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E74DE00C75; Wed,  5 Dec 2018 00:09:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F77FE0053F
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 00:09:15 -0800 (PST)
Received: by mail-io1-f48.google.com with SMTP id f14so10477272iol.4
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2018 00:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oNiXgAWwBFCNRy4kL+DDgcTGClp4hKnEyJVA9ZucUKc=;
	b=DCVwq4/doJkgv7369uidpaZ0NdU8NTAhfC0hDYfgZgSg4fx+oZrn8mE5qmCrUNht5T
	FF5RR6NMxtPjJoMU1BRyR6CHrasSVPAXe7VKLFDOGB7E52xUSj9zGjitbx1dBH2OVep8
	4CcRkdgtLMrcp7lunApHS/BayMr7IkSlRmOjTqwLXkAgK4tKohMZwCkHsO6YmSa7M23J
	dzBbOHpDHT1ygyJ1EAyL8cqD16nHyindQGQGnshqaTxP9yO3wUnnGk9HheydtTgjhpcQ
	oCR7bkAXD1EEiv0F1M8r98UqmhgpW57R48CuF30UhPq1XCEbQOULsZJuNMCbNnFWfcYT
	D2Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oNiXgAWwBFCNRy4kL+DDgcTGClp4hKnEyJVA9ZucUKc=;
	b=iVVaORLdPBN/urZ1IzbQWznbqi95DDr9936zerO7T8CCWf96KY+OIovL514J8sv2hm
	Xiqz4EPPnQNQWAHYvecBASJ/fVeZqYiPMK0UUTamMrUhIhPA403lHUgdeDWIKSk2bEAI
	CicqRiIOpsK/S9BnWPuIqUzej26wCefZRoKGY9DEm06kbW86R9MgPmgpOVJMxajpxSLf
	3XlEE/LyWMCsn3yQi/c9aQDr9MacbwqrsKhohPYu53Bg9COwDlIAyTfNIzooX8rs1wrT
	K/1dFZxdqDKAt0pD5QQvlBdNOogIjI5Mp903Y1n0LbwRNB33gdJPQKPOUFrdRsZzrauj
	yvdg==
X-Gm-Message-State: AA+aEWZKpuQE0+T0F+YY8fp88ef6PtLTpvYLrIGk9nOpRHfU15SfL/WI
	SRwgFaKP65D6KKticrhxK/DlZtu7Gtxe7QgY1QyfKXy4
X-Google-Smtp-Source: AFSGD/XNVtR8j+vJDLLqJp4WIyBDFVRDj/NEE1qkT3FnLyQkdyhMEmG+zHuSdzJVbkkc5W/mhJF1IKsWg/Njn+lxE7g=
X-Received: by 2002:a5d:954c:: with SMTP id a12mr11163577ios.176.1543997354776;
	Wed, 05 Dec 2018 00:09:14 -0800 (PST)
MIME-Version: 1.0
References: <18DB423D160957498153A71956CACF8222223254@EXCHSVR3.protedyne.protedyne.com>
In-Reply-To: <18DB423D160957498153A71956CACF8222223254@EXCHSVR3.protedyne.protedyne.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Wed, 5 Dec 2018 09:09:02 +0100
Message-ID: <CAB2nKc80sfF40PBS3vegh5_o0E7Gac0Z6z9=0bT_v_c27M-2OQ@mail.gmail.com>
To: dbuchwald@protedyne.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	openembedded-devel@lists.openembedded.org
Subject: Re: [oe] Yocto and OpenJDK
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
X-List-Received-Date: Wed, 05 Dec 2018 08:09:16 -0000
Content-Type: multipart/alternative; boundary="000000000000dd9fcf057c41e5a8"

--000000000000dd9fcf057c41e5a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dave,

I think this question belong to yocto ML as stated here:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java/about/

Best regards,
Vincent

Le lun. 3 d=C3=A9c. 2018 =C3=A0 22:38, Dave Buchwald <dbuchwald@protedyne.c=
om> a
=C3=A9crit :

> I have a question about Java versions for Yocto. As we know, starting in
> January 2019, Oracle will
> basically start crapping on the open source licensing availability for th=
e
> JDK and will start charging for
> updates starting with JDK11.  I build software and hardware using
> Yocto-built images for the imx7 using
> Java and various Java-based technologies.
>
>
> -        Will the Yocto project go to newer versions of OpenJDK? 9, 10, 1=
1?
>
> -        How will the Yocto project and meta-java go forward due to
> Oracle's actions?
>
> -        Will newer versions be tied to newer BSP's?
>
>
>
>
> thanks,
> Dave Buchwald
> Protedyne Corp.
> Windsor, CT
> --
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>

--000000000000dd9fcf057c41e5a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Dave, <br></div><div><br></div><d=
iv>I think this question belong to yocto ML as stated here:</div><div> <a h=
ref=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java/about/">h=
ttp://git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java/about/</a></div><=
div><br></div><div>Best regards,</div><div>Vincent<br></div></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr">Le=C2=A0lun. 3 d=C3=A9c. 2018 =
=C3=A0=C2=A022:38, Dave Buchwald &lt;<a href=3D"mailto:dbuchwald@protedyne.=
com">dbuchwald@protedyne.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">I have a question about Java versions for Yocto. As w=
e know, starting in January 2019, Oracle will<br>
basically start crapping on the open source licensing availability for the =
JDK and will start charging for<br>
updates starting with JDK11.=C2=A0 I build software and hardware using Yoct=
o-built images for the imx7 using<br>
Java and various Java-based technologies.<br>
<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 Will the Yocto project go to newer versions of=
 OpenJDK? 9, 10, 11?<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 How will the Yocto project and meta-java go fo=
rward due to Oracle&#39;s actions?<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 Will newer versions be tied to newer BSP&#39;s=
?<br>
<br>
<br>
<br>
<br>
thanks,<br>
Dave Buchwald<br>
Protedyne Corp.<br>
Windsor, CT<br>
-- <br>
_______________________________________________<br>
Openembedded-devel mailing list<br>
<a href=3D"mailto:Openembedded-devel@lists.openembedded.org" target=3D"_bla=
nk">Openembedded-devel@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-deve=
l" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailm=
an/listinfo/openembedded-devel</a><br>
</blockquote></div>

--000000000000dd9fcf057c41e5a8--
