Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AC83E00D66; Fri,  2 Oct 2015 11:22:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93520E0086D
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 11:22:52 -0700 (PDT)
Received: by ykdt18 with SMTP id t18so118485999ykd.3
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 11:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4QmQaGdO5zeTvlmxJorrwIv+ls29/GCRRa0dM0Bt6gA=;
	b=uGYBcsOVau7a8sVKIKR34U3LOCEZYI0vWgGqPBKo3mDx26o5aFmzzy44z6uaW1iEzg
	47NrM+/Pgl4aRYLHcde1d6MiHCZIpwWcAz3iJ1r8qU0j92TdggDLA/1iix/dqNmYZvLs
	YqTrve/saytPQkfgOkvSkywCD3HmnNAr4o9ceCCwJQjBPm0+JKCVSs19hNGnuS4P2zQd
	yE546IsE8KeH5fTY9FRyTThg3iJbAOtnT3/KhRL6C5gsSuoFSfc2VHKXxyfAh8fNYuRS
	+P+9OtlO2oHHg8gFk5m0EsdAY65/idJCxREU1ew3ZGoxt+WSaDrdU7KuC7fpNzOCQa2b
	lukA==
MIME-Version: 1.0
X-Received: by 10.170.88.84 with SMTP id f81mr14719388yka.78.1443810171698;
	Fri, 02 Oct 2015 11:22:51 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Fri, 2 Oct 2015 11:22:51 -0700 (PDT)
In-Reply-To: <CABcZANmVTBNEj-dOC-+EsfH5z9fdXqSaEXGz_8AxfSa6VAx+mw@mail.gmail.com>
References: <1443801396017.79471@seescan.com>
	<CABcZANkg=UpD8pgB7B8vSj=pfveyE6WaDz1F+VMu76VSERa8Jg@mail.gmail.com>
	<CAF3SDA6J4E=1_T2jDS+0-ajtcJYqWFL2aKE_+Ly6LEfdChHdhw@mail.gmail.com>
	<CAF3SDA5BFz2bZ3k0x6y67n4C-FnEr7CU-3ZD89fMJk-TPqD-wQ@mail.gmail.com>
	<CABcZANmVTBNEj-dOC-+EsfH5z9fdXqSaEXGz_8AxfSa6VAx+mw@mail.gmail.com>
Date: Fri, 2 Oct 2015 15:22:51 -0300
Message-ID: <CAF3SDA5UfXUMzbB5cnD5KSaCr6aPMq4=U_vP=xWw+4a=O=Zheg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS_prepend fails for systemd
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
X-List-Received-Date: Fri, 02 Oct 2015 18:22:53 -0000
Content-Type: multipart/alternative; boundary=001a113a7fcc684b1e05212340f4

--001a113a7fcc684b1e05212340f4
Content-Type: text/plain; charset=UTF-8

Where can I find this recipetool!? It seems a nice tool to have :)

2015-10-02 15:21 GMT-03:00 Christopher Larson <clarson@kergoth.com>:

>
> On Fri, Oct 2, 2015 at 11:11 AM, Daniel. <danielhilst@gmail.com> wrote:
>
>> But this will only work if journald.conf are the same in all systemd
>> versions (since you use a _%.bbappend). A better solution would be append
>> install task with a copy from your custom journald.conf to install folder,
>> something like:
>>
>> do_install_append() {
>>     cp ${S}/myjournald.conf ${D}/propper/path/to/journald.conf
>> }
>
>
> Which is precisely what recipetool appendfile will do for you :)
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a113a7fcc684b1e05212340f4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Where can I find this recipetool!? It seems a nice tool to=
 have :)<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>2015-10-02 15:21 GMT-03:00 Christopher Larson <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&=
gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><span class=3D""><br><div class=3D"gmail_quote">On Fri, Oc=
t 2, 2015 at 11:11 AM, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:dani=
elhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div><div>But this will only work i=
f journald.conf are the same in all systemd versions (since you use a _%.bb=
append). A better solution would be append install task with a copy from yo=
ur custom journald.conf to install folder, something like:<br><br></div>do_=
install_append() {<br></div>=C2=A0=C2=A0=C2=A0 cp ${S}/myjournald.conf ${D}=
/propper/path/to/journald.conf<br>}</blockquote></div><br></span>Which is p=
recisely what recipetool appendfile will do for you :)<span class=3D""><br>=
-- <br><div>Christopher Larson<br>clarson at kergoth dot com<br>Founder - B=
itBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software E=
ngineer, Mentor Graphics</div>
</span></div></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature"><div style=3D"text-align:right"><i>&quot;Do or do not. There is no =
try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div>

--001a113a7fcc684b1e05212340f4--
