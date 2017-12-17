Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E5B4E00D6C; Sat, 16 Dec 2017 18:09:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1467E00CE1
	for <yocto@yoctoproject.org>; Sat, 16 Dec 2017 18:08:59 -0800 (PST)
Received: by mail-qt0-f195.google.com with SMTP id m59so16348432qte.11
	for <yocto@yoctoproject.org>; Sat, 16 Dec 2017 18:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZNCwyZ++/DnlbbUGtsICNBCBxmA2bMa6/B361xqGfZo=;
	b=hqwe2FWSnPu3CBuf9Q7bLoh53u/yVHYImsJves0Vw5PuQS7AKpwRxu9XBJMKr+hunJ
	kh1hVe1T64lK28sChHs4cYwEOHGs7+S7GUVerrPlROgn802OMRT0a+WMGVARocpFjRb9
	VHyCiBsFdbadcJ6ZP2KDA4QVjFEYtDBhMRnd5YdrAR5qGFKLcWwNoVP29/dQUT/wyapS
	kh6fd+WxaaACQfYTgxIR48IeqOOMojv+hsbwXj5deXflBjr/Qr4rnazzCmXjCZy8eu/c
	uVY7r2vcJ7FXb0TMPVQv9qQAf+4tekq43hLkQZFccVzsvCCt8djIt04VadWHWk+6+6ZO
	YQ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZNCwyZ++/DnlbbUGtsICNBCBxmA2bMa6/B361xqGfZo=;
	b=Q4I6Pjt5ERLr+gwQASnlLrJY/hP1V0SoQNGZ69o+14HdfSoPYfFA+YSzOPFX4cVqw5
	Jz47eZZK+dkcQ26KYH5vMIs5lih6ttt29TPbC1rrR1R/WbqEH3UdDwYkOiFzlxa4FHnI
	EqA3hQEWZIvMMw8jmPNHYR2z+4EPJ8p+aOtMETQYASDZBU6CA5KxqN46Epl77PGlslDy
	5+7vA8sAH7HLQwIH8fg0JThnsDk8FDcxx5f5vNca1Hu59QR6DxjvRgf+Cs/2k+NHz5Av
	YxW/8s8R/kClirPVNxTcu1nA+QO6CJQlU6AvAV6EZLf03r3EwNesiwom9JQ+3Lt9KOxS
	AnDg==
X-Gm-Message-State: AKGB3mJZR8DNB+NT+WH6CBMZ57/iHv23iB+SfZAVN0Vr3wdCI5lKWi07
	gkeG/u9hnIgmIp08Zf3cSlxH5/eYHJaKsKUoK9w=
X-Google-Smtp-Source: ACJfBov+398X7RP8tkWT2fBFPgfx0hn/AnxQCRtObzcOK7+Lc6Qp1XUpAnOsYjtW2Vc1VgwjN/C1mgfcIeYVqIWPG8o=
X-Received: by 10.237.35.146 with SMTP id j18mr27716529qtc.271.1513476538857; 
	Sat, 16 Dec 2017 18:08:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.21.241 with HTTP; Sat, 16 Dec 2017 18:08:58 -0800 (PST)
In-Reply-To: <CAGAf8LyvZhOzFQg-FC_2CFS42CD3FYhpJcjiTqnqDOfJSHTTfg@mail.gmail.com>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
	<CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
	<CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
	<CAGAf8LzQcHY_rgue5oc_hurCE6yn6kMxB20tJ1=i8-eDrvUhWw@mail.gmail.com>
	<1513343351.15290.25.camel@genivi.org>
	<CAF3SDA7qxvPZvLh6-JRRZpEAncb7ywmw2-ULpskveYXFMZn+hw@mail.gmail.com>
	<1513349714.15290.36.camel@genivi.org>
	<CAGAf8LyvZhOzFQg-FC_2CFS42CD3FYhpJcjiTqnqDOfJSHTTfg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Sun, 17 Dec 2017 00:08:58 -0200
Message-ID: <CAF3SDA5pTg7q7U8VQC+zeqPD6P9nkBJ95fQqad8=m=AhYRmfyw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Gunnar Andersson <gandersson@genivi.org>
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Sun, 17 Dec 2017 02:09:00 -0000
Content-Type: multipart/alternative; boundary="001a11377074797d6805607fb75d"

--001a11377074797d6805607fb75d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,

The problem happens at this line:
https://github.com/openembedded/openembedded-core/blob/rocko/meta/classes/k=
ernel-yocto.bbclass#L295

The `scc` call expands to .kernel-meta/configs///, but
.kernel-meta/configs/ doesn't exist at the time that merge_configs.sh runs,
at line 295. I don't know scc or merge_config.sh. If anybody can add more
detail about these scripts would be helpful. Anyway, this may be fixed by
creating the missing folder between lines 289 and 295, I just don't know if
this is the right thing to do.

Here is the error traced by shell: https://pastebin.com/X9hFFbeG

Regards,

2017-12-15 14:08 GMT-02:00 Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com>:

> > I just reacted to Zoran's suggestion, with what I find to at least be a
> better alternative for controlling the build host.
>
> Gunnar,
>
> You (probably) did not read Martin's (Jansa) comment on my initial, and m=
y
> reply. I already reverted my decision on
> downgrading Fedora and other distros.
>
> Zoran
>
> On Fri, Dec 15, 2017 at 3:55 PM, Gunnar Andersson <gandersson@genivi.org>
> wrote:
>
>> On Fri, 2017-12-15 at 12:50 -0200, Daniel. wrote:
>> > As I told before, by pass this is a simple matter of running devshell,
>> > creating the folder and running running the build again,
>> >
>> > Paul ask me for more information and so I did, I'll remove that
>> duplicated
>> > layer and fire `bitbake -fc cleanall linux-raspberry && bitbake linux-
>> > rapsberry` again, if I hit this I may try some digging. I don't think
>> this
>> > has to do with Fedora version, anyway, sooner or latter this version
>> will
>> > be tested, so this same error may arise, and at that time we'll be doi=
ng
>> > the same questions, so, why to wait?
>>
>> Agreed!  It would seem strange if it's a host problem, and even if it
>> were,
>> it's better to get to the bottom of it, so that the latest popular distr=
os
>> work as intended.  I just reacted to Zoran's suggestion, with what I fin=
d
>> to
>> at least be a better alternative for controlling the build host.
>>
>> Good luck!
>>
>> - Gunnar
>>
>> >
>> > Regards,
>>
>>
>>
>


--=20
=E2=80=9CIf you're going to try, go all the way. Otherwise, don't even star=
t. ..."
  Charles Bukowski

--001a11377074797d6805607fb75d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi guys,<br></div><br></div>The proble=
m happens at this line: <a href=3D"https://github.com/openembedded/openembe=
dded-core/blob/rocko/meta/classes/kernel-yocto.bbclass#L295">https://github=
.com/openembedded/openembedded-core/blob/rocko/meta/classes/kernel-yocto.bb=
class#L295</a><br><br></div>The `scc` call expands to .kernel-meta/configs/=
//, but .kernel-meta/configs/ doesn&#39;t exist at the time that merge_conf=
igs.sh runs, at line 295. I don&#39;t know scc or merge_config.sh. If anybo=
dy can add more detail about these scripts would be helpful. Anyway, this m=
ay be fixed by creating the missing folder between lines 289 and 295, I jus=
t don&#39;t know if this is the right thing to do.</div><div><br></div><div=
>Here is the error traced by shell: <a href=3D"https://pastebin.com/X9hFFbe=
G">https://pastebin.com/X9hFFbeG</a><br></div><div><br></div><div>Regards,<=
br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">20=
17-12-15 14:08 GMT-02:00 Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=
=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavlj=
evic@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><span class=3D""><span style=3D"font-size:12.8px">&gt; I just reac=
ted to Zoran&#39;s suggestion, with what I find to=C2=A0</span><span style=
=3D"font-size:12.8px">at least be a better alternative for controlling the =
build host.</span><br><div><span style=3D"font-size:12.8px"><br></span></di=
v></span><div><span style=3D"font-size:12.8px">Gunnar,</span></div><div><sp=
an style=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-siz=
e:12.8px">You (probably) did not read Martin&#39;s (Jansa) comment on my in=
itial, and my reply. I already reverted my decision on</span></div><div><sp=
an style=3D"font-size:12.8px">downgrading Fedora and other distros.</span><=
/div><span class=3D"HOEnZb"><font color=3D"#888888"><div><span style=3D"fon=
t-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">Zoran=
</span></div></font></span></div><div class=3D"HOEnZb"><div class=3D"h5"><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Dec 15, 201=
7 at 3:55 PM, Gunnar Andersson <span dir=3D"ltr">&lt;<a href=3D"mailto:gand=
ersson@genivi.org" target=3D"_blank">gandersson@genivi.org</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><span>On Fri, 2017-12-15 at 12:50 -=
0200, Daniel. wrote:<br>
&gt; As I told before, by pass this is a simple matter of running devshell,=
<br>
&gt; creating the folder and running running the build again,<br>
&gt;<br>
&gt; Paul ask me for more information and so I did, I&#39;ll remove that du=
plicated<br>
&gt; layer and fire `bitbake -fc cleanall linux-raspberry &amp;&amp; bitbak=
e linux-<br>
&gt; rapsberry` again, if I hit this I may try some digging. I don&#39;t th=
ink this<br>
&gt; has to do with Fedora version, anyway, sooner or latter this version w=
ill<br>
&gt; be tested, so this same error may arise, and at that time we&#39;ll be=
 doing<br>
&gt; the same questions, so, why to wait?=C2=A0<br>
<br>
</span>Agreed!=C2=A0 It would seem strange if it&#39;s a host problem, and =
even if it were,<br>
it&#39;s better to get to the bottom of it, so that the latest popular dist=
ros<br>
work as intended.=C2=A0 I just reacted to Zoran&#39;s suggestion, with what=
 I find to<br>
at least be a better alternative for controlling the build host.<br>
<br>
Good luck!<br>
<br>
- Gunnar<br>
<br>
&gt;<br>
&gt; Regards,<br>
<br>
<br>
</blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">=E2=80=9CIf you&#39=
;re going to try, go all the way. Otherwise, don&#39;t even start. ...&quot=
; <br>=C2=A0 Charles Bukowski</div>
</div>

--001a11377074797d6805607fb75d--
