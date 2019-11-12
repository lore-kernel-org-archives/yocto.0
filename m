Return-Path: <kunyi@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6E54E00D82; Tue, 12 Nov 2019 10:14:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C8E8E00839
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 10:14:32 -0800 (PST)
Received: by mail-io1-f43.google.com with SMTP id k1so19796185ioj.6
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 10:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=U+JIRvPsGEmIOYp4z5p7tSnf9H+CVT8P6zkE/Rwq4Bk=;
	b=e8G3h7RKDkHY8cgqS5c5B6u5PogbALAx/SH1Ch+uN/DLdYya+tIKr+0+MThHFggnyo
	gQ6jRx5DjfFTO8nVVtLvvwlUJqC1huQ/qDu5nLdBko5RA2ozZIzNSAgduSIzi7x0todT
	9LxkfNJpjLz6JDYeqXsjZSi6LWQc/mAKTTxkHOcdhDCF2uPcmuy2If4fZkB4MXC24vyK
	Cim09pwUsefuQzpnJyIUyeQyfKkj+imcJuM5cA1J90rK8EbOeygzPCVNsfEIYMsXXJRD
	d+j5Jcpwls5I3nqpHUotupYgCmqTCrY3nxndW+GnzLMug0UQlpBetFoa75fc5Y8j7Tcc
	XrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=U+JIRvPsGEmIOYp4z5p7tSnf9H+CVT8P6zkE/Rwq4Bk=;
	b=eDKGNz0quw7lSL3WF8hR9N9tQ3+R5uVjNtcfaAPo/UUMBgj3mPgvG0S1E6QC5cB5JZ
	CP4WjWv3Ca2xG4/roleVT6v7HM0xnaTWU0jiNhEP1G6k/PK0Tru9j4z7iaVZZKz9jp5X
	VUzRBwh5SkgE2lxy+h7zsApjwtIOloLyNIpTNJAiVVZbs05fKPesc9TjcMclkvRIsESK
	nNOG69fMdDiLyp2C6UoVdeZiTBG4YV9uhBlqc8nhgerCZxL2vOkPplgte54he2VTi1co
	GL41oMm/sGkCI24YosYwkCgHSRaZcMr7A3X+VjAbX1SkSKJEMdeVIcOwbrTNfPQL8kJ8
	jqmw==
X-Gm-Message-State: APjAAAWcrqLoXfIYFiEHnV87CoQE9Euk/5XRBNrO/rRtOw0ohImW5LzG
	+Q9WNGOgIW65oAPy54dP80xNVe5x1jBaiDNdMmX3yXJlOpQ=
X-Google-Smtp-Source: APXvYqzL8UDsJDHmALp+rpDQfm53dssq+ayOX9bQhto/z2KaE0ILPeYWU934mzAxGOXS90UMAqsGZC7nLo7nnhovms0=
X-Received: by 2002:a6b:18c1:: with SMTP id 184mr7339907ioy.40.1573582471216; 
	Tue, 12 Nov 2019 10:14:31 -0800 (PST)
MIME-Version: 1.0
References: <CAGMNF6U81+d9wz4h_TiPBA0EoxC6bhiUZ67mozWWwwT4GTVMCg@mail.gmail.com>
	<9AC7EF7E-3FFF-4855-B9DE-80F3B68236E0@fuzziesquirrel.com>
	<CAGMNF6W8bWD_2Zpynz9vcVdGA9d8B+QfbA=oau2zQj+xpf9NEw@mail.gmail.com>
	<CEB2088C-C91F-46ED-9FC1-2480893767E0@fuzziesquirrel.com>
In-Reply-To: <CEB2088C-C91F-46ED-9FC1-2480893767E0@fuzziesquirrel.com>
From: Kun Yi <kunyi@google.com>
Date: Tue, 12 Nov 2019 10:14:05 -0800
Message-ID: <CAGMNF6WLawVcR0hH+Mg=2=zSXJ9120GkMzYkhHrOQXL--xjfrw@mail.gmail.com>
To: Brad Bishop <bradleyb@fuzziesquirrel.com>
X-Mailman-Approved-At: Mon, 18 Nov 2019 01:40:04 -0800
Cc: yocto@yoctoproject.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>
Subject: Re: Yocto/bitbake recipe 'diff test'?
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
X-List-Received-Date: Tue, 12 Nov 2019 18:14:32 -0000
Content-Type: multipart/alternative; boundary="000000000000394c9205972a389a"

--000000000000394c9205972a389a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 12, 2019 at 10:05 AM Brad Bishop <bradleyb@fuzziesquirrel.com>
wrote:

>
>
> > On Nov 12, 2019, at 1:55 AM, Kun Yi <kunyi@google.com> wrote:
> >
> > Sure, it's partially due to how we set up the build downstream. Our
> downstream would put all the needed layers in one bblayers file, so we
> would have something like:
> >
> >   ##OEROOT##/meta \
> >   ##OEROOT##/meta-poky \
> >   ##OEROOT##/meta-openembedded/meta-oe \
> >   ##OEROOT##/meta-openembedded/meta-networking \
> >   ##OEROOT##/meta-openembedded/meta-python \
> >   ##OEROOT##/meta-phosphor \
> >   ##OEROOT##/meta-google \
> >   ##OEROOT##/meta-google-gbmc \
> >   ##OEROOT##/meta-aspeed \
> >   ##OEROOT##/meta-nuvoton \
> >   ##OEROOT##/meta-openpower \
> >   ##OEROOT##/meta-ingrasys \
> >   ##OEROOT##/meta-ingrasys/meta-zaius \
> >   ##OEROOT##/meta-quanta \
> >   ##OEROOT##/meta-quanta/meta-gsj \
> > ...
> >
> > The distinct advantage of this approach is that we would be able to
> build images for different machine types using the same layer conf, so th=
e
> build doesn't need to be reconfigured if you were to test on another
> platform.
> >
> > The challenge, as you can imagine, is that each meta layer now cannot
> 'leak' any variable. e.g. if some recipe in meta-quanta sets a variable f=
or
> quanta systems only, then it must specify "_quanta" or a similar suffix t=
o
> prevent the variable expansion to apply to other systems. I think this ru=
le
> is generally preferred upstream, but not sure whether it is an official
> guideline.
> >
> > With my proposal, it would be much easier for a multi-system layer setu=
p
> like ours to work. Not only that, it would benefit the most common use
> cases: moving variable definitions in bitbake recipes, or even just addin=
g
> a variable for a particular machine feature. Having a visible diff would
> make reviewing the changes so much easier.
>
> Thanks for the background Kun.
>
> I know yocto has a concept of Q&A checks that can be run - would it make
> sense to try something like this via that mechanism?  Emit warnings (whic=
h
> we can elevate to build failures in CI) if variables aren=E2=80=99t prope=
rly
> overriden?  That is nice because it doesn=E2=80=99t require any changes t=
o our CI
> system.
>
> That's an approach I haven't thought of. Thanks Brad! I'm a little worrie=
d
that it would incur more bitbake changes, but let's see if the Yocto folks
have ideas.


> I=E2=80=99ve cross posted to the yocto mailing list in case there is any =
interest
> or ideas there.  Here is a link to the entire thread as I remove a little
> too much context I think=E2=80=A6
>
> https://lists.ozlabs.org/pipermail/openbmc/2019-November/019409.html
>
> -brad



--=20
Regards,
Kun

--000000000000394c9205972a389a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 12, 2019 at 10:05 AM Brad Bis=
hop &lt;<a href=3D"mailto:bradleyb@fuzziesquirrel.com">bradleyb@fuzziesquir=
rel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><br>
<br>
&gt; On Nov 12, 2019, at 1:55 AM, Kun Yi &lt;<a href=3D"mailto:kunyi@google=
.com" target=3D"_blank">kunyi@google.com</a>&gt; wrote:<br>
&gt;=C2=A0 <br>
&gt; Sure, it&#39;s partially due to how we set up the build downstream. Ou=
r downstream would put all the needed layers in one bblayers file, so we wo=
uld have something like:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-poky \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-openembedded/meta-oe \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-openembedded/meta-networking \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-openembedded/meta-python \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-phosphor \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-google \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-google-gbmc \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-aspeed \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-nuvoton \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-openpower \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-ingrasys \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-ingrasys/meta-zaius \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-quanta \<br>
&gt;=C2=A0 =C2=A0##OEROOT##/meta-quanta/meta-gsj \<br>
&gt; ...<br>
&gt; <br>
&gt; The distinct advantage of this approach is that we would be able to bu=
ild images for different machine types using the same layer conf, so the bu=
ild doesn&#39;t need to be reconfigured if you were to test on another plat=
form.<br>
&gt; <br>
&gt; The challenge, as you can imagine, is that each meta layer now cannot =
&#39;leak&#39; any variable. e.g. if some recipe in meta-quanta sets a vari=
able for quanta systems only, then it must specify &quot;_quanta&quot; or a=
 similar suffix to prevent the variable expansion to apply to other systems=
. I think this rule is generally preferred upstream, but not sure whether i=
t is an official guideline.<br>
&gt; <br>
&gt; With my proposal, it would be much easier for a multi-system layer set=
up like ours to work. Not only that, it would benefit the most common use c=
ases: moving variable definitions in bitbake recipes, or even just adding a=
 variable for a particular machine feature. Having a visible diff would mak=
e reviewing the changes so much easier.<br>
<br>
Thanks for the background Kun.<br>
<br>
I know yocto has a concept of Q&amp;A checks that can be run - would it mak=
e sense to try something like this via that mechanism?=C2=A0 Emit warnings =
(which we can elevate to build failures in CI) if variables aren=E2=80=99t =
properly overriden?=C2=A0 That is nice because it doesn=E2=80=99t require a=
ny changes to our CI system.<br>
<br></blockquote><div>That&#39;s an approach I haven&#39;t thought of. Than=
ks Brad! I&#39;m a little worried that it would incur more bitbake changes,=
 but let&#39;s see if the Yocto folks have ideas.<br></div><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
I=E2=80=99ve cross posted to the yocto mailing list in case there is any in=
terest or ideas there.=C2=A0 Here is a link to the entire thread as I remov=
e a little too much context I think=E2=80=A6<br>
<br>
<a href=3D"https://lists.ozlabs.org/pipermail/openbmc/2019-November/019409.=
html" rel=3D"noreferrer" target=3D"_blank">https://lists.ozlabs.org/piperma=
il/openbmc/2019-November/019409.html</a><br>
<br>
-brad</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D=
"ltr" class=3D"gmail_signature"><div dir=3D"ltr">Regards,<div>Kun</div></di=
v></div></div>

--000000000000394c9205972a389a--
