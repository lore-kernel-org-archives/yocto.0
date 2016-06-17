Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1399CE00E58; Fri, 17 Jun 2016 15:10:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AFB9E00E56
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 15:10:25 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id n127so11951140iof.2
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 15:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=e9lLyTnmuN+vGM97Ni/WABIACpi8sIcfCGmbHuLDHZE=;
	b=bx0Ivt+/UfMxwcKKV/Eyx479lxoZNRcyPRu9vHY3khe5C3JC6lzX9dZOfSUOCAYHLb
	Kp8EAclgBryRIDVJv3tM+CJkV2w/vRoUgAr3ndhJM3XjFiSDWGbEi3wAWohIPASbuKH1
	Tsyhnt4svi082Bvs22+lCki7MuN/LjrhZ50dyDJXFW5qsj4Bv/JbjRdonqS+4/Le0bqj
	Fz5rQdmVUgeM/roGWuI/5TNd8apwl+JAIkP2v45AcRjVPi3tMWMd4caaNj6VUpYF0L1x
	plJql3QL9qZexWReDW/YuzcDVfyohk4JoGa7d73CCO34IGGrrhwjrLRufMSfN2YQL0vA
	sGqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=e9lLyTnmuN+vGM97Ni/WABIACpi8sIcfCGmbHuLDHZE=;
	b=EMvFq/5HcIkN3Revior5odK/QQREnlGNC0YOcWzFw/SvLg4rJmT4vbGZKxmJUDZYeq
	DQktlBzi6km3ODX7dikpzoC3AhjHuwOTzfB0587JYxHu6kiqiwryJ21kNchTE2aBpCMj
	fbGAIKfhHTgbcEsnFXr+/oW++o6ybdwEUZpXl6wL6j1teuL3jn78UtIVHkVWuPr8rC/A
	mJnReX5zbTsP6TzLKTTt4uMXihaVAFmC1MVOk/3nB+5wvaWl+FMG796iv4Yo+cSnmIG2
	RJlOuYKqFbE2OnsjYhITnPVVQFWwRBhNhl6fHfACgCahpXe/CFOj4JwEEhR7vC0Ds3M1
	dJHw==
X-Gm-Message-State: ALyK8tJ5MFWA/klPs8D3DjyhXBF4/qa2QAyrTVTmKXBxRCVhX1IhbZ9N55jwZQZz0y1fQZx1hRMTowriU0UTKA==
X-Received: by 10.107.131.212 with SMTP id n81mr6773901ioi.126.1466201425249; 
	Fri, 17 Jun 2016 15:10:25 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.130.66 with HTTP; Fri, 17 Jun 2016 15:10:05 -0700 (PDT)
In-Reply-To: <CABcZANkPQBWukZTtzz69JQZHOFRpnXyPV1BvP8Bv-CZqqRtSkA@mail.gmail.com>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E5718DD13@fmsmsx111.amr.corp.intel.com>
	<CABcZANkPQBWukZTtzz69JQZHOFRpnXyPV1BvP8Bv-CZqqRtSkA@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 17 Jun 2016 15:10:05 -0700
X-Google-Sender-Auth: oyrssgCS1DPm6Qq-GIh3QFVPoTI
Message-ID: <CABcZANn0Th7280tbwbMuL+YcWyvyzrYJHkGRv4SNiY0TLygGaw@mail.gmail.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW25
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
X-List-Received-Date: Fri, 17 Jun 2016 22:10:28 -0000
Content-Type: multipart/alternative; boundary=001a113ec32e1f0b190535809f34

--001a113ec32e1f0b190535809f34
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 17, 2016 at 2:42 PM, Christopher Larson <clarson@kergoth.com>
wrote:

> On Fri, Jun 17, 2016 at 8:31 AM, Jolley, Stephen K <
> stephen.k.jolley@intel.com> wrote:
>
>> =C2=B7        There is a multilib issue related to the layout of the hos=
t
>> libraries leaking into python=E2=80=99s build process which we=E2=80=99r=
e struggling to
>> debug
>
>
> Could I get some details on this? I've seen something like this where
> cmake and automake are relying on sys.lib from python3-native/python-nati=
ve
> to determine the sitepackages directory, is that the behavior others are
> hitting? So python modules end up in /usr/lib/ rather than /usr/lib64/, f=
or
> example?
>
> If that's the issue in question, the issue is the mismatch between the
> native sys.lib and target. We already patch automake to fall back to usin=
g
> our libdir + python version to determine the path, but only if it wasn't
> able to use sys.lib to do so. If we change that to always use libdir+pyth=
on
> version, it should fix the automake packages. Then we might need to patch
> FindPythonLibs in cmake to do the same. I'm testing the automake change
> locally now.
>

Hmm, nevermind, seems that was fixed in oe-core already, huzzah :)
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113ec32e1f0b190535809f34
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Jun 17, 2016 at 2:42 PM, Christopher Larson <span dir=3D"ltr">&lt;<=
a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmai=
l_extra"><span class=3D""><div class=3D"gmail_quote">On Fri, Jun 17, 2016 a=
t 8:31 AM, Jolley, Stephen K <span dir=3D"ltr">&lt;<a href=3D"mailto:stephe=
n.k.jolley@intel.com" target=3D"_blank">stephen.k.jolley@intel.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><span style=3D"font-size:10=
.0pt;font-family:Symbol;color:black"><span>=C2=B7<span style=3D"font:7.0pt =
&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black">There is a multilib issue related to=
 the layout of the host libraries leaking into python=E2=80=99s build proce=
ss which we=E2=80=99re struggling to debug</span></blockquote></div><br></s=
pan>Could I get some details on this? I&#39;ve seen something like this whe=
re cmake and automake are relying on sys.lib from python3-native/python-nat=
ive to determine the sitepackages directory, is that the behavior others ar=
e hitting? So python modules end up in /usr/lib/ rather than /usr/lib64/, f=
or example?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">If that&#39;s the issue in question, the issue is the mismatch betwee=
n the native sys.lib and target. We already patch automake to fall back to =
using our libdir + python version to determine the path, but only if it was=
n&#39;t able to use sys.lib to do so. If we change that to always use libdi=
r+python version, it should fix the automake packages. Then we might need t=
o patch FindPythonLibs in cmake to do the same. I&#39;m testing the automak=
e change locally now.</div></blockquote></div><br>Hmm, nevermind, seems tha=
t was fixed in oe-core already, huzzah :)<br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature">Christopher Larson<br>clarson at=
 kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintain=
er - Tslib<br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a113ec32e1f0b190535809f34--
