Return-Path: <dbensoussan@synapticon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07D74E00A9B; Sat, 22 Apr 2017 00:49:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDC94E00A30
	for <yocto@yoctoproject.org>; Sat, 22 Apr 2017 00:49:16 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id u70so61119437ywe.2
	for <yocto@yoctoproject.org>; Sat, 22 Apr 2017 00:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=synapticon-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZhIcTVZecMlmbyvkRPp9OnLM5qTYZaTsdH5tL4k3xiI=;
	b=whpDmnsOXUV4irQ4OMOgdBjHCgDLZw06I6D9RlvkCy3caUh0BVOZqO7Ta6Vi1aXJQq
	uzcnjyD3cg77E+tRDBOh+25kUXS0fnK8YrwECI8GIiotrIQBx4+skXE5drjML0tLri/o
	6zDaiBxek+VcNnTjxLY5dUIDHsmO6bmOXLHV1ZPPoE1PlJjWVIPeG1sICT0GIoYtEaJ5
	a2W6vPGEtxHDrzioFVhIHRzQCQE0nJ8/MajpUjmI08pmxXLXKt06qVBr4zG3H645e5P2
	ST0OVr+Tsq89Gaq6FhfhQ+4IpwZCHfifDZkjQ9OeEk4krUUolSZwnSYRzMW4rIMn45x3
	FXNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZhIcTVZecMlmbyvkRPp9OnLM5qTYZaTsdH5tL4k3xiI=;
	b=fkUfCTRLK3Co/Dwvwzab385Nls+SCs1LMvtfAnjVkcOZJd+F/lQmfdbwyDaJOTElo8
	yT5+DRuGpMq/bRrtbJ/grcgOb7ifc3cq8ghM6l04OPzBSn8PebBuW7XZb29Q2bXlihtz
	YXUvvC+JPJPss9zL6h9VO3KgL8smk1kJlTvP4AE5O5oOTguRg06A0j4A/Fwwff4V0vC5
	v42bAdV/RwnebCWe0yePDJGtG6qlM3X/OF86UyumYwGgIZW28dISAPxJEuEkseKuEsWO
	rlJHTIwBKxPi4v9MyZcljshbIDyrsVl7M8YpdzWvFsa8UGTymQHMWDnaKZn8cEV2I+6S
	Pavg==
X-Gm-Message-State: AN3rC/4WYy2ElLiHDvyLqbIfsK+GaESULB3J6VKFgv/1vRXyud5+Gpy0
	QYw/Y9bfy5yaLCH3XsKl7NmksXPrOg==
X-Received: by 10.129.137.4 with SMTP id z4mr291406ywf.321.1492847355839; Sat,
	22 Apr 2017 00:49:15 -0700 (PDT)
MIME-Version: 1.0
References: <CACDGP4GBGn6KNH8m+UHhbWajbKTMppPW4g8ePKqfhm9fdpXE2g@mail.gmail.com>
	<20170421185026.GA8444@linux-uys3>
In-Reply-To: <20170421185026.GA8444@linux-uys3>
From: David Bensoussan <dbensoussan@synapticon.com>
Date: Sat, 22 Apr 2017 07:49:05 +0000
Message-ID: <CACDGP4F4jTRdLuZD0e98qe9H5qcQEL2Yo+n2wKPePUrOtTUi+g@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: bitbake core-image-base -c do_populate_sdk fails with glibc (unmet dependencies)
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
X-List-Received-Date: Sat, 22 Apr 2017 07:49:20 -0000
Content-Type: multipart/alternative; boundary=94eb2c06c100595b8e054dbc9c47

--94eb2c06c100595b8e054dbc9c47
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

It was a typo, sorry, I typed it without the "do_"

On Fri, 21 Apr 2017 at 20:50 Trevor Woerner <twoerner@gmail.com> wrote:

> On Fri 2017-04-21 @ 11:37:44 AM, David Bensoussan wrote:
> > I wanted to generate an sdk and met these errors while executing:
> > $ bitbake core-image-base -c do_populate_sdk
>
> Does adding the "do_" work? Is there any difference if you type:
>
>         $ bitbake core-image-base -c populate_sdk
>
> ?
>
--=20

*David bensoussan*
Roboticist / Embedded Software Engineer
------------------------------

*Synapticon* | Robotic Control Systems
Mobile: 015779804515
Fax: +49 7031 / 30 478 -99

*synapticon.com* <https://www.synapticon.com/> | Twitter
<https://twitter.com/#!/synapticon_co> | Facebook
<https://fb.com/Synapticon>

Synapticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Germany
Secretary +49 7031 / 30 478 -0 | Managing Director: Nikolai Ensslen
Amtsgericht Stuttgart HRB 756076 | USt-ID DE271647127

This message and any files transmitted with it are confidential and
intended solely for the use of the individual or entity to whom they are
addressed. Please notify the sender immediately if you have received this
e-mail by mistake and delete it from your system.

--94eb2c06c100595b8e054dbc9c47
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It was a typo, sorry, I typed it without the &quot;do_&quo=
t;</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, 21 Apr 2017=
 at 20:50 Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri 2=
017-04-21 @ 11:37:44 AM, David Bensoussan wrote:<br>
&gt; I wanted to generate an sdk and met these errors while executing:<br>
&gt; $ bitbake core-image-base -c do_populate_sdk<br>
<br>
Does adding the &quot;do_&quot; work? Is there any difference if you type:<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ bitbake core-image-base -c populate_sdk<br>
<br>
?<br>
</blockquote></div><div dir=3D"ltr">-- <br></div><div data-smartmail=3D"gma=
il_signature"><div dir=3D"ltr"><p id=3D"inbox-inbox-person-name" style=3D"b=
ox-sizing:border-box;font-family:arial,helvetica,sans-serif;font-size:13.33=
33px;color:rgb(0,0,0);padding:0px;margin:1em 0px"><strong style=3D"box-sizi=
ng:border-box">David bensoussan</strong><br style=3D"box-sizing:border-box"=
>Roboticist / Embedded Software Engineer</p><hr style=3D"box-sizing:border-=
box;margin:0px;padding:0px;height:1px;background-image:initial;background-p=
osition:initial;background-size:initial;background-repeat:initial;backgroun=
d-origin:initial;background-clip:initial;background-color:rgb(229,27,65);bo=
rder:none;color:rgb(17,17,17);font-family:arial,helvetica,sans-serif;font-s=
ize:13.3333px"><p id=3D"inbox-inbox-tag-line" style=3D"box-sizing:border-bo=
x;font-family:arial,helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);pa=
dding:0px;margin:1em 0px"><strong style=3D"box-sizing:border-box">Synaptico=
n</strong><span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span>| =
Robotic Control Systems</p><table cellpadding=3D"0" cellspacing=3D"0" style=
=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif;font-size:=
13.3333px;color:rgb(17,17,17);padding:0px"><tbody style=3D"box-sizing:borde=
r-box"><tr style=3D"box-sizing:border-box"><td style=3D"box-sizing:border-b=
ox;color:rgb(0,0,0);padding:0px 15px 3px 0px">Mobile:</td><td style=3D"box-=
sizing:border-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">015779804515</=
td></tr><tr style=3D"box-sizing:border-box"><td style=3D"box-sizing:border-=
box;color:rgb(0,0,0);padding:0px 15px 3px 0px">Fax:</td><td style=3D"box-si=
zing:border-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">+49 7031 / 30 47=
8 -99</td></tr></tbody></table><p style=3D"box-sizing:border-box;font-famil=
y:arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(0,0,0);padding:0=
px;margin:1em 0px"><a href=3D"https://www.synapticon.com/" style=3D"box-siz=
ing:border-box;color:rgb(1,81,154)"><strong style=3D"box-sizing:border-box"=
>synapticon.com</strong></a><span class=3D"inbox-inbox-Apple-converted-spac=
e">=C2=A0</span>|<span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</=
span><a href=3D"https://twitter.com/#!/synapticon_co" style=3D"box-sizing:b=
order-box;color:rgb(1,81,154)">Twitter</a><span class=3D"inbox-inbox-Apple-=
converted-space">=C2=A0</span>|<span class=3D"inbox-inbox-Apple-converted-s=
pace">=C2=A0</span><a href=3D"https://fb.com/Synapticon" style=3D"box-sizin=
g:border-box;color:rgb(1,81,154)">Facebook</a></p><p id=3D"inbox-inbox-addr=
ess" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif;=
font-size:13.3333px;color:rgb(153,153,153);padding:0px;margin:1em 0px">Syna=
pticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Germany<span cl=
ass=3D"inbox-inbox-Apple-converted-space">=C2=A0</span><br style=3D"box-siz=
ing:border-box">Secretary +49 7031 / 30 478 -0 | Managing Director: Nikolai=
 Ensslen<span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span><br =
style=3D"box-sizing:border-box">Amtsgericht Stuttgart HRB 756076 | USt-ID D=
E271647127<span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span><b=
r style=3D"box-sizing:border-box"></p><p style=3D"box-sizing:border-box;fon=
t-family:arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(0,0,0);pa=
dding:0px;margin:1em 0px"></p><p id=3D"inbox-inbox-confidentiality" style=
=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif;font-size:=
7.5pt;color:rgb(153,153,153);padding:0px;margin:1em 0px;width:450px">This m=
essage and any files transmitted with it are confidential and intended sole=
ly for the use of the individual or entity to whom they are addressed. Plea=
se notify the sender immediately if you have received this e-mail by mistak=
e and delete it from your system.</p></div></div>

--94eb2c06c100595b8e054dbc9c47--
