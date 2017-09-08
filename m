Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4742E00CCE; Fri,  8 Sep 2017 05:23:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_RATIO_08,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,T_REMOTE_IMAGE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* 0.0 HTML_IMAGE_RATIO_08 BODY: HTML has a low ratio of text to image
	area * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.41 listed in dnsbl.sorbs.net]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BA6BE00CFC
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 05:22:52 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id r20so13750137oie.0
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 05:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=LI9pRsvHgy6QnShj1MId6TOYPAgsIhnOtKJqdC41/pM=;
	b=pNjG5O5ndGcukucw0uBhEMGKEXW2PQ+ZH5Oam3pxLBS9IOUjVQcZoEucKHv/IVlyOC
	INqaRGXcreEk4bLXW06ZL+be2dktDaavw11asUW/m+VnAua1s/tNtquFtBntQHKm9x4g
	FDQLrqxdzI4/jobz/XgEVpRwYV2Tc1UKy1yWDUJW7DQa0sBHHT4LSqH60ZCPuPvGWttP
	zK0XH5Ni93uQbK4eLdbIUe2w7uoCJu//h2BbQ/UsTwjYZAH/lBAEpaHL7yhc0g+p9SyP
	ZYIaDQzVVSQ9VX3q4nTs7dCBtjgVu+a5lwvgFyFFwirAzPOQ+y257f2MwuXBIYcrFTeL
	vh3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=LI9pRsvHgy6QnShj1MId6TOYPAgsIhnOtKJqdC41/pM=;
	b=Nhp+SQ0mYIz1Gmn56bA3l5/bbCZHbjs2jN6ol9I9+CHVdt3xNm5n7K3F35lfe31az+
	SINHZgg2L2NZWDyPVJ/S+miWlAKRNhsMUND/zkws9OZ/2CRPbdGXmWvjFrigz9yZ37IY
	t0bKvtY9LsD3KAuLlYRI8hkT4syHJDA/A2mXYSQkw6SKbhAXKP2Yq71P/4KcBl5WX6ja
	TFJvtBOXHngVnTdLJ9Tn7phq+dXhf2EpDwTuhGJoS2WSGfbGMu3hFLNaCd5dkN30bGSr
	S4D/Y2igw3OXNoq9d9K06T08TZDkrt5d7OkJHI/n94K6c0mOFcdO9hv+3Vyvt0aylKEC
	GMUg==
X-Gm-Message-State: AHPjjUjrXdWtTncEEtyHIWPrBUUrS9DIWj9dt5TRW4HSKoBHLW45GWJP
	jf7j1Y8T6rLO0NVCHWNUjkiPwEsUeg==
X-Google-Smtp-Source: AOwi7QChZDYlYx9W5v+7dpiMpyd7UAAApI3YdNatyGV4dn/CGbJ3eJr+17Wvz5UJ3ZNIM3S7rEGdh4XVpyVrFkgXqN4=
X-Received: by 10.202.76.9 with SMTP id z9mr2830198oia.253.1504873372298; Fri,
	08 Sep 2017 05:22:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.82.15 with HTTP; Fri, 8 Sep 2017 05:22:51 -0700 (PDT)
In-Reply-To: <CABFXn3HXz9ZZvg-r6joXne3gNN3=+EbzHku1Vg3NLvZrUB2kFQ@mail.gmail.com>
References: <CABFXn3HXz9ZZvg-r6joXne3gNN3=+EbzHku1Vg3NLvZrUB2kFQ@mail.gmail.com>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Fri, 8 Sep 2017 14:22:51 +0200
Message-ID: <CABFXn3HRnkfc3jY0F4VTt+USW187pTqPaTA9cUtGqm72WLOtTQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: how to submit a patch
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
X-List-Received-Date: Fri, 08 Sep 2017 12:23:02 -0000
X-Groupsio-MsgNum: 37739
Content-Type: multipart/related; boundary="SsWL9sWbDfH5DBfQd0Sw"

--SsWL9sWbDfH5DBfQd0Sw
Content-Type: multipart/alternative; boundary="001a113df0fac9b1c60558aca2ed"

--001a113df0fac9b1c60558aca2ed
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i found it in pyro docs, never mind



<https://mailtrack.io/> Sent with Mailtrack
<https://mailtrack.io/install?source=3Dsignature&lang=3Den&referral=3Dyahia=
farghaly@gmail.com&idSignature=3D22>

On 8 September 2017 at 14:11, yahia farghaly <yahiafarghaly@gmail.com>
wrote:

> How to submit a patch in yocto ? i come across this link for open embedde=
d
> https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
> should i follow it ? or there is something else? . more specifically, my
> patch will be in pyro branch
>
> Thanks,
>
>
>
> --
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications
> Department at Cairo University.
> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
> <https://github.com/yahiafarghaly>
>
>
>
> =E2=80=8C
>



--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113df0fac9b1c60558aca2ed
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/68915f01ee14d6853ef1eb3c98081284da898c45.png?u=3D1822760"/=
>i found it in pyro docs, never mind<br/><br/><br/><br/><div style=3D"displ=
ay:inline">
            <div class=3D"mt-signature" style=3D"padding-right:5px;color:i=
nitial">
                <a href=3D"https://mailtrack.io/" class=3D"mt-signature-lo=
go" style=3D"text-decoration:none">
                    <img src=3D"https://s3-eu-west-1.amazonaws.com/mailtra=
ck-crx/icon-signature.png" height=3D"14"/>
                </a>
                <span style=3D"color:#999">Sent with </span>
                <a href=3D"https://mailtrack.io/install?source=3Dsignature=
&amp;lang=3Den&amp;referral=3Dyahiafarghaly@gmail.com&amp;idSignature=3D22"=
 class=3D"mt-install">Mailtrack</a>
                
            </div></div></div><div class=3D"gmail_extra"><br/><div class=
=3D"gmail_quote">On 8 September 2017 at 14:11, yahia farghaly <span dir=3D=
"ltr">&lt;<a href=3D"mailto:yahiafarghaly@gmail.com" target=3D"_blank">yahi=
afarghaly@gmail.com</a>&gt;</span> wrote:<br/><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"m_-64131795397210=
91323mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"cid:attach_0_15D=
95A7B969F7C02_14359@groups.io"/><div>How to submit a patch in yocto ? i com=
e across this link for open embedded=C2=A0</div><div><a href=3D"https://www=
.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded" target=3D"_bl=
ank">https://www.openembedded.org/<wbr/>wiki/How_to_submit_a_patch_to_<wbr/=
>OpenEmbedded</a>=C2=A0</div><div>should i follow it ? or there is somethin=
g else? . more specifically, my patch will be in pyro branch</div><div><br/=
></div><div>Thanks,</div><span class=3D"HOEnZb"><font color=3D"#888888"><di=
v><br/></div><br clear=3D"all"/><div><br/></div>-- <br/><div class=3D"m_-64=
13179539721091323gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><f=
ont size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Ari=
al,serif,EmojiFont"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</sp=
an></font><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helveti=
ca,sans-serif,serif,EmojiFont;font-size:16px"></span><div><font color=3D"#7=
77777" face=3D"Tahoma, sans-serif, Arial, serif, EmojiFont"><span style=3D"=
font-size:13px">Graduated from Faculty of Engineering - Electronics and Com=
munications Department at Cairo University.</span></font><br/></div><div st=
yle=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,seri=
f,EmojiFont;font-size:16px"><div><a href=3D"https://linkedin.com/in/yahiafa=
rghaly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" styl=
e=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"fo=
nt-size:13px">Linkedin</span></font></a><font size=3D"1" color=3D"#777777" =
style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=
=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.c=
om/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=
=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span=
 style=3D"font-size:13px">GitHub</span></font></a></div></div></div></div><=
/div></div>
<br/><br/><br/>=E2=80=8C</font></span></div>
</blockquote></div><br/><br clear=3D"all"/><div><br/></div>-- <br/><div cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"font-fam=
ily:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px"=
>Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></sp=
an><div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, serif, E=
mojiFont"><span style=3D"font-size:13px">Graduated from Faculty of Engineer=
ing - Electronics and Communications Department at Cairo University.</span>=
</font><br/></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,=
Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"https:=
//linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_bla=
nk"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emo=
jiFont"><span style=3D"font-size:13px">Linkedin</span></font></a><font size=
=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a h=
ref=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" target=
=
=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,=
serif,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a></d=
iv></div></div></div></div></div>
</div>
</body></html>

--001a113df0fac9b1c60558aca2ed--

--SsWL9sWbDfH5DBfQd0Sw
Content-Id: <attach_0_15D95A7B969F7C02_14359@groups.io>
X-Attachment-Id: attach_0_15D95A7B969F7C02_14359@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--SsWL9sWbDfH5DBfQd0Sw--
