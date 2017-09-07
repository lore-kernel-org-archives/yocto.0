Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30D4DE00CBA; Thu,  7 Sep 2017 01:11:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B519E00CAA
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 01:11:11 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id c82so8186135vkd.4
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 01:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lbBC/kPEOX6CaUQHKkPuZCmxer9sXtmg7G2ByHOdB/o=;
	b=ifKhbfnWw4Ao2Z8xPh43FpNlfg1LowoWFrPbmLmLeybhiU97tEuaE9XvyCh/dJUyEl
	wJdfVPHpbGdnKiBSsagrxGCtxp4Nf3ImRE1c/MMcnqpr3jlpqlgFZpkKZV4SGPtMWpLh
	b6anpbCHZv3qk2yqkzaqkiK3DU+VK78Ya05xEYYZADSyezvGV6Ruf6PbcTKrRHPqbNfx
	0l87WVZMh3Jte6FlNSf29d+/yP2LyIAOItd5ljp3CIjODT/cHAbd2u+T2n3bPK+odbmk
	ZldQ8Y7xelq3ba0UVK4is0+d1EfnbI4CtQCKYsaM4KivcPNvXQpq8msc/cYfkG30mva8
	eQVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lbBC/kPEOX6CaUQHKkPuZCmxer9sXtmg7G2ByHOdB/o=;
	b=bJuHSRWySFGb0t8cVIdU/Dc+82vRXNM2FfQAKNbyNHHTIHtpzZO5MNeqy6IOsn5bOX
	hU0NjZyoMc9LQYlpqrkDNoJC01sU1w+kuzMgboPC96U7GLBcR3/olNQ2cKFlq1MenUe1
	6hr4jGLNUj36DyBVPKH5yluGUCMEwHCvub/6LqA+klrEfnDQJnLA/QZk1zfl+fAJMBJv
	enRHU3oOXiWSrlJdRShs7xoc+aALHzZPji0E0xorteoC3rDCZrkpSxw0FFTq5beqT0wZ
	qtNBkImvIrzlb+4nWepQW/yuXsh5wnXwOXwc2ZyRuXqw2pqpcINlQPDmlJFYMgZtPdoZ
	lo/Q==
X-Gm-Message-State: AHPjjUj44kngzHUHejvaCCwV3Rp/L3Cxhiul6qIpQAuD1eJ35bAkeRG3
	OaetBXpHbXsDCco4mSeSnW2sCIxQ6A==
X-Google-Smtp-Source: ADKCNb6VMmvsccCjtDAGszR23sjGnIg8vr7/TXL2bDJYh/IKj7MZXRRYqiH5Z3qkA6X60GwvvOuu1r2Hc3M0PU3c0gY=
X-Received: by 10.31.229.193 with SMTP id c184mr931475vkh.184.1504771870445;
	Thu, 07 Sep 2017 01:11:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Thu, 7 Sep 2017 01:11:09 -0700 (PDT)
In-Reply-To: <2045341.dPOz5jq8Px@peggleto-mobl.ger.corp.intel.com>
References: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
	<1504510407.12799.57.camel@intel.com>
	<CAC+thW3S79M-w7EYd9bZ9X8p3qz7gF3V6XH=3rH-LEnNE8JBjA@mail.gmail.com>
	<2045341.dPOz5jq8Px@peggleto-mobl.ger.corp.intel.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 7 Sep 2017 10:11:09 +0200
Message-ID: <CAC+thW09W9AFOrGHQPV0XwGCssvgh39KRRtChB3jbi3dx_B2TQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cannot re-use shared state cache between build hosts
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
X-List-Received-Date: Thu, 07 Sep 2017 08:11:12 -0000
Content-Type: multipart/alternative; boundary="001a114dfa6cce56c70558950061"

--001a114dfa6cce56c70558950061
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 4, 2017 at 10:56 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday, 4 September 2017 7:59:55 PM NZST Andrea Galbusera wrote:
> > On Mon, Sep 4, 2017 at 9:33 AM, Patrick Ohly <patrick.ohly@intel.com>
> wrote:
> > > More recent bitbake should not fail like that anymore. It's still
> > > better to use an HTTP server that performs better, though.
> > >
> > > commit 6fa07752bbd3ac345cd8617da49a70e0b2dd565f
> > > Author: Patrick Ohly <patrick.ohly@intel.com>
> > > Date:   Mon Jul 17 15:25:10 2017 +0200
> > >
> > >     fetch2/wget.py: improve error handling during sstate check
> > >
> > >     When the sstate is accessed via HTTP, the existence check can fail
> due
> > >     to network issues, in which case bitbake silently continues without
> > >     sstate.
> > >
> > >     One such network issue is an HTTP server like Python's own
> SimpleHTTP
> > >     which closes the TCP connection despite an explicit "Keep-Alive" in
> > >     the HTTP request header. The server does that without a "close" in
> the
> > >     HTTP response header, so the socket remains in the connection
> cache,
> > >     leading to "urlopen failed: <urlopen error [Errno 9] Bad file
> > >     descriptor>" (only visible in "bitbake -D -D" output) when trying
> to
> > >     use the cached connection again.
> > >
> > >     The connection might also get closed for other reasons (proxy,
> > >     timeouts, etc.), so this is something that the client should be
> able
> > >     to handle.
> > >
> > >     This is achieved by checking for the error, removing the bad
> > >     connection, and letting the check_status() method try again with a
> new
> > >     connection. It is necessary to let the second attempt fail
> > >     permanently, because bad proxy setups have been observed to also
> lead
> > >     to such broken connections. In that case, we need to abort for real
> > >     after trying twice, otherwise a build would just hang forever.
> > >
> > >     [YOCTO #11782]
> > >
> >
> > Thank you Patrick for pointing that out. While debugging the issue on
> morty
> > I had some reminiscence of seeing your patch on the list, but I wasn't
> able
> > to find it back in morty's history hence inferring it landed later on.
> > Anyway doing this test on morty was a requirement... Thanks again for
> your
> > clarification. Would such a patch be suitable for eventually being
> > back-ported to morty?
>
> Doesn't look too invasive to me at least, so I'd support it.
>

I did some positive tests with Patrick's patch on top of morty and it
improves a lot the situation even with SimpleHTTPServer. Than I'd like to
propose it is backported to morty and, after further testing, reasonably
should land in pyro too. But I'm unsure how such a request should be
submitted. Since it affects bitbake, what's the proper way and which list
should I send such a request?

--001a114dfa6cce56c70558950061
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, Sep 4, 2017 at 10:56 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a><wbr>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><span class=3D"m_5740388219677843934gmail-">On Monday, 4 S=
eptember 2017 7:59:55 PM NZST Andrea Galbusera wrote:<br>
&gt; On Mon, Sep 4, 2017 at 9:33 AM, Patrick Ohly &lt;<a href=3D"mailto:pat=
rick.ohly@intel.com" target=3D"_blank">patrick.ohly@intel.com</a>&gt; wrote=
:<br>
</span><div><div class=3D"m_5740388219677843934gmail-h5">&gt; &gt; More rec=
ent bitbake should not fail like that anymore. It&#39;s still<br>
&gt; &gt; better to use an HTTP server that performs better, though.<br>
&gt; &gt;<br>
&gt; &gt; commit 6fa07752bbd3ac345cd8617da49a70<wbr>e0b2dd565f<br>
&gt; &gt; Author: Patrick Ohly &lt;<a href=3D"mailto:patrick.ohly@intel.com=
" target=3D"_blank">patrick.ohly@intel.com</a>&gt;<br>
&gt; &gt; Date:=C2=A0 =C2=A0Mon Jul 17 15:25:10 2017 +0200<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0fetch2/wget.py: improve error handling during =
sstate check<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0When the sstate is accessed via HTTP, the exis=
tence check can fail due<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0to network issues, in which case bitbake silen=
tly continues without<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sstate.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0One such network issue is an HTTP server like =
Python&#39;s own SimpleHTTP<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0which closes the TCP connection despite an exp=
licit &quot;Keep-Alive&quot; in<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0the HTTP request header. The server does that =
without a &quot;close&quot; in the<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0HTTP response header, so the socket remains in=
 the connection cache,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0leading to &quot;urlopen failed: &lt;urlopen e=
rror [Errno 9] Bad file<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0descriptor&gt;&quot; (only visible in &quot;bi=
tbake -D -D&quot; output) when trying to<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0use the cached connection again.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0The connection might also get closed for other=
 reasons (proxy,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0timeouts, etc.), so this is something that the=
 client should be able<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0to handle.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0This is achieved by checking for the error, re=
moving the bad<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0connection, and letting the check_status() met=
hod try again with a new<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0connection. It is necessary to let the second =
attempt fail<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0permanently, because bad proxy setups have bee=
n observed to also lead<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0to such broken connections. In that case, we n=
eed to abort for real<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0after trying twice, otherwise a build would ju=
st hang forever.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0[YOCTO #11782]<br>
&gt; &gt;<br>
&gt;<br>
</div></div><span class=3D"m_5740388219677843934gmail-">&gt; Thank you Patr=
ick for pointing that out. While debugging the issue on morty<br>
&gt; I had some reminiscence of seeing your patch on the list, but I wasn&#=
39;t able<br>
&gt; to find it back in morty&#39;s history hence inferring it landed later=
 on.<br>
&gt; Anyway doing this test on morty was a requirement... Thanks again for =
your<br>
&gt; clarification. Would such a patch be suitable for eventually being<br>
&gt; back-ported to morty?<br>
<br>
</span>Doesn&#39;t look too invasive to me at least, so I&#39;d support it.=
<br></blockquote><div><br></div><div>I did some positive tests with Patrick=
&#39;s patch on top of morty and it improves a lot the situation even with =
SimpleHTTPServer. Than I&#39;d like to propose it is backported to morty an=
d, after further testing, reasonably should land in pyro too. But I&#39;m u=
nsure how such a request should be submitted. Since it affects bitbake, wha=
t&#39;s the proper way and which list should I send such a request?</div></=
div></div></div>

--001a114dfa6cce56c70558950061--
