Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2656E009D4; Tue, 29 May 2018 08:52:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3484DE009D4
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 08:52:11 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id 14-v6so5474807oie.3
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 08:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hq+lyLqg/73GBlAiuthe9paBMqnMg51/9LycnsnogM8=;
	b=U7ISitkm34f+TjzRe5FikvgoIw1M7FXu3YW5wpdR6mP+g38LwJlKfO3YhtJCYYeEI6
	LsYV5gvWHVvdEnraVeRA3N5doBPVM1sMOCYmZBbjBGwszodas8343KpvRYT+iAyh9I9C
	Z6zH/BH3r/QOhW0/I+PHPBnESndMar3F2z0cs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hq+lyLqg/73GBlAiuthe9paBMqnMg51/9LycnsnogM8=;
	b=s8U1Zc1Hjkyyq9kYMFvsr9JhsLTzwLzxnBLK7n27C6a7F5/HltIjlbqU8BbBVBI2++
	exHqJ1J4bhouHttU5aiAYUO6BUZNv4LUYi3rF+pwVz3+AhE3LF89lhHcdeHC/ThecEOL
	OPpHy2g7PvAKqIJuwSkzEnDnoU4CBnHZVD7SwrMzDm6LKYTb18bhjA9Hz7fWseY2PpZ7
	c+Um4D8QtKEK0vi9CxCPfSPyr8O8tvP8Ag4sTrsPxvC7G5P4n3y28fzsLEGFsj+W8aYZ
	c/HjeWWYSjQTCBOPhCYB5EJKhk8+bOH4Fj5S8VlYFojMRSjUjE0tbyGDz7KnPXl9eYxY
	XSEg==
X-Gm-Message-State: ALKqPwe9s2CuViMp5JFYODy6CF5ZOMfLC9MsN+PnsDACUX+dN2AjoBeM
	HcsBxRFjoRpZU4+ZiDzBJHofLZAPtuGJdZEEFVWb6A==
X-Google-Smtp-Source: AB8JxZqpmTNehbRryLNDk+P10wR3cMdhBqF5gcSXRFQqajC68jlUsZg8arZfysQUhMJYEQ6z3rAmCfEcU8LWc1dHbQI=
X-Received: by 2002:aca:5e43:: with SMTP id
	s64-v6mr9356736oib.332.1527609131190; 
	Tue, 29 May 2018 08:52:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:1346:0:0:0:0:0 with HTTP; Tue, 29 May 2018 08:52:10
	-0700 (PDT)
In-Reply-To: <800E589716441541A37F6120DCDD24557A2CC6B1@IRSMSX101.ger.corp.intel.com>
References: <2c9b354f-cb29-d8ae-875f-123a45b045e6@linux.intel.com>
	<CAHUNapSC1zBx8vq1Z2p8pU-TV_r_-uXLHv_P+C4MuSti5Yz3_Q@mail.gmail.com>
	<064fd4f8-7cac-e354-a710-c61085e7fe84@linux.intel.com>
	<3ffb78f7-8115-6040-988a-6fe2a1f79a46@linuxfoundation.org>
	<800E589716441541A37F6120DCDD24557A2CC6B1@IRSMSX101.ger.corp.intel.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Tue, 29 May 2018 08:52:10 -0700
Message-ID: <CADfgfoYPVVazGs+V4DPy_xHuDzQ65R=+3-HT_U1EpVH9s3Y0mg@mail.gmail.com>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Call to Action] Yocto Project Bug Triage
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
X-List-Received-Date: Tue, 29 May 2018 15:52:13 -0000
Content-Type: multipart/alternative; boundary="0000000000009ee2b2056d5a379b"

--0000000000009ee2b2056d5a379b
Content-Type: text/plain; charset="UTF-8"

The meeting page is https://www.yoctoproject.org/public-virtual-meetings/
for anyone interested.

On Tue, May 29, 2018 at 8:39 AM, Osier-mixon, Jeffrey <
jeffrey.osier-mixon@intel.com> wrote:

> Stephen and I put together a meetings page. I'll work with him on a
> shareable calendar this week.
>
>
> -------- Original message --------
> From: Michael Halstead <mhalstead@linuxfoundation.org>
> Date: 5/29/18 8:37 AM (GMT-08:00)
> To: Stephano Cetola <stephano.cetola@linux.intel.com>, Trevor Woerner <
> twoerner@gmail.com>
> Cc: yocto@yoctoproject.org, "Jolley, Stephen K" <
> stephen.k.jolley@intel.com>, "Osier-mixon, Jeffrey" <
> jeffrey.osier-mixon@intel.com>
> Subject: Re: [yocto] [Call to Action] Yocto Project Bug Triage
>
>
>
> On 05/29/2018 08:16 AM, Stephano Cetola wrote:
> > On 5/29/18 8:00 AM, Trevor Woerner wrote:
> >> Is someone working on putting together a (google?) calendar of the
> >> various project (OE Yocto) meetings?
> > Great question.
> >
> > Michael, do we have access to a Yocto Project google account?
> >
> > --S
> >
> I don't but I think this is being worked on currently. It appears new
> meetings are being scheduled by theyoctoproject@gmail.com. Whoever
> controls that account should be able to make the calendar public.
>
> --
> Michael Halstead
> Linux Foundation / SysAdmin
>
>

--0000000000009ee2b2056d5a379b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The meeting page is <a href=3D"https://www.yoctoproject.or=
g/public-virtual-meetings/">https://www.yoctoproject.org/public-virtual-mee=
tings/</a> for anyone interested.</div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Tue, May 29, 2018 at 8:39 AM, Osier-mixon, Jeffrey=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:jeffrey.osier-mixon@intel.com" tar=
get=3D"_blank">jeffrey.osier-mixon@intel.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">





<div>
<div><font face=3D"sans-serif">Stephen and I put together a meetings page. =
I&#39;ll work with him on a shareable calendar this week.=C2=A0</font><div>=
<div class=3D"h5">
<div><br>
</div>
<div><br>
</div>
<div>-------- Original message --------</div>
<div>From: Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfoundation=
.org" target=3D"_blank">mhalstead@linuxfoundation.org</a><wbr>&gt; </div>
<div>Date: 5/29/18 8:37 AM (GMT-08:00) </div>
<div>To: Stephano Cetola &lt;<a href=3D"mailto:stephano.cetola@linux.intel.=
com" target=3D"_blank">stephano.cetola@linux.intel.<wbr>com</a>&gt;, Trevor=
 Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoern=
er@gmail.com</a>&gt;
</div>
<div>Cc: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a>, &quot;Jolley, Stephen K&quot; &lt;<a href=3D"mailto:s=
tephen.k.jolley@intel.com" target=3D"_blank">stephen.k.jolley@intel.com</a>=
&gt;, &quot;Osier-mixon, Jeffrey&quot; &lt;<a href=3D"mailto:jeffrey.osier-=
mixon@intel.com" target=3D"_blank">jeffrey.osier-mixon@intel.com</a><wbr>&g=
t;
</div>
<div>Subject: Re: [yocto] [Call to Action] Yocto Project Bug Triage </div>
<div><br>
</div>
</div></div></div><div><div class=3D"h5">
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"m_-5600529620024584419PlainText"><br>
<br>
On 05/29/2018 08:16 AM, Stephano Cetola wrote:<br>
&gt; On 5/29/18 8:00 AM, Trevor Woerner wrote:<br>
&gt;&gt; Is someone working on putting together a (google?) calendar of the=
<br>
&gt;&gt; various project (OE Yocto) meetings?<br>
&gt; Great question.<br>
&gt;<br>
&gt; Michael, do we have access to a Yocto Project google account?<br>
&gt;<br>
&gt; --S<br>
&gt;<br>
I don&#39;t but I think this is being worked on currently. It appears new<b=
r>
meetings are being scheduled by <a href=3D"mailto:theyoctoproject@gmail.com=
" target=3D"_blank">theyoctoproject@gmail.com</a>. Whoever<br>
controls that account should be able to make the calendar public.<br>
<br>
-- <br>
Michael Halstead<br>
Linux Foundation / SysAdmin<br>
<br>
</div>
</span></font>
</div></div></div>

</blockquote></div><br></div>

--0000000000009ee2b2056d5a379b--
