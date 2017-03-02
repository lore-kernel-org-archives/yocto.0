Return-Path: <cswarth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 449D9E00826; Wed,  1 Mar 2017 21:30:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (cswarth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64F41E00826
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 21:30:30 -0800 (PST)
Received: by mail-ua0-f193.google.com with SMTP id c11so1891988uaa.2
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 21:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GSyq+GguP2Q646pSXvrufU15p01+aizxRDDRkGmpuTw=;
	b=FUfIdwoXbe3yhu/IVHkWGFaFQpnEES7ALnw/cVRV4YgipbAhRHJuH0TS2eqyN0zVcu
	bEZrTTJqCNQGkhJ8sApvSv8MdAX7hlDbGalLclPOI261giR4DFtx9slepKLPXkyPv8MU
	gQ3ngc7NytUOBj2Pv134WrD0UgXSsX9qLsPBgsV/89gBWAwmirZscCagDwMqVvoGbKdx
	Xu2NDajsWsmVJKLIIr2jW3USuE5zMb4QJFSCC7P39kqDAAgfhNA6rRdpYlJWxHtew4qY
	rePakRSOZnSOgwKglnJbKeW2smVxsObPWWjq2L8JBn6jDCjtmQZSePMeKkrRqEjmbC3j
	auiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GSyq+GguP2Q646pSXvrufU15p01+aizxRDDRkGmpuTw=;
	b=Bb6Kk56gWhjWSc2lDeZjJhPtPMOB6BIfFBmeYOLlljmEvlR5zKrLRSEZT2nxHGhoXz
	9zDq2V4q4NU72nof5B4RfpgNgWO9qKsC18JKk5mUaU3x1dAsZ1Lqgl1XHlxgj9UEKgve
	p2PDS1DgIRH6X7TbbVzpQ4rBO3gm+9euX2qbnSEsQTZB7O+Rjr8+/qSXWJnrw8ICAnBF
	STGwuJXgHBaWcN/5XwFZLGnqukiJbw+KXnVnPLauq1sd1Q/gTeqmucC6ALVIVpz7Qop8
	wfNbE9yF8m7VGBvyV7Lcw+92Wlwm2Z+5ffDdmwBmX/+cllQzHnyzeD6wHdU5S270Bx90
	/34w==
X-Gm-Message-State: AMke39k1i/+1T+Pi2GrXVje5vw5EV4m5Ckb0toBls82cEQtWpBwDYZa/wTYe9tr13zZnIverGaM7cfo6rMWtlw==
X-Received: by 10.176.4.163 with SMTP id 32mr5237632uaw.33.1488432630215; Wed,
	01 Mar 2017 21:30:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.105.208 with HTTP; Wed, 1 Mar 2017 21:29:49 -0800 (PST)
In-Reply-To: <2555590.9aBZNM2DbW@peggleto-mobl.ger.corp.intel.com>
References: <CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com>
	<1669316.G5xAQX6A5S@peggleto-mobl.ger.corp.intel.com>
	<CAJJmP9B9YmS37pB21KzCcpB68AwfghkQZRY510e=uPofoPaJHA@mail.gmail.com>
	<2555590.9aBZNM2DbW@peggleto-mobl.ger.corp.intel.com>
From: chris warth <cswarth@gmail.com>
Date: Wed, 1 Mar 2017 21:29:49 -0800
Message-ID: <CAJJmP9CG+QZWJ0bB8_ZqgH3w4CjHLNBd1JwMBTvgXU241nDnWQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BBMASK not working for me?
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
X-List-Received-Date: Thu, 02 Mar 2017 05:30:32 -0000
Content-Type: multipart/alternative; boundary=94eb2c124ac0323a570549b8baca

--94eb2c124ac0323a570549b8baca
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 1, 2017 at 5:39 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Thursday, 2 March 2017 2:14:13 PM NZDT chris warth wrote:
> > <paul.eggleton@linux.intel.com> wrote:
> > > On Thursday, 2 March 2017 11:31:42 AM NZDT chris warth wrote:
> > >> This vendor-supplied version of yocto looks like 2.0, so the space
> > >> separated expressions are not available.
> > >> After putting some print statements in cooker.py I discovered that
> > >> appending to BBMASK in conf/bblayers.conf or conf/local.conf has no
> > >> effect.  It was not until I modified BBMASK_forcevariable in my
> > >> conf/bblayers.conf  that I saw any change in behavior.
> > >>
> > >> BBMASK_forcevariable = ".*openjre|.*openjdk|.*qemu_qoriq"
> > >>
> > >> This inability to modify BBMASK unless using _forcevariable was also
> > >> noted last year.
> > >> https://lists.yoctoproject.org/pipermail/yocto/2016-
> September/032033.html
> > >
> > > That sounds strange. Did you use bitbake -e | less to see where your
> non-
> > > forcevariable setting was being overridden? More than likely you have a
> > > layer or some other configuration you're bringing in and that's simply
> > > setting it with = at some point later in parsing than local.conf. The
> > > history of the BBMASK variable shown through bitbake -e will tell you
> > > exactly where that is.
> >
> > Thank you, Paul.  I didn't know about bitbake -e.
> > As you predicted, it shows that an earlier layer is setting BBMASK
> > with equals, in this case the
> > meta-freescale layer.
> >
> > BBMASK=".*openjre|.*openjdk"
> >
> > Should I be mad at the vendor for being careless?
>
> Personally I think you should, yes. BSP layers really should not be setting
> BBMASK, IMO. Interestingly though I can't see this BBMASK in meta-fsl-arm /
> meta-fsl-ppc either in current master or in the history for master - where
> is
> this exactly?
>
>
FWIW, This is in a SDK for the LS1046A development board supplied by NXP as
a couple of ISO images and a tarball in late 2016.    For the most part it
seems to be based on publicly accessible sources although the ls1046a-rdb
support comes from cached copies of internal NXP git repos (e.g.
sw-stash.freescale.net/scm/dnnpi).

Here is the bitbake -e output showing BBMASK

# $BBMASK [2 operations]
#   set
/mnt/nxp-sdk/sources/meta-freescale/conf/machine/include/qoriq-arm64.inc:9
#     ".*openjre|.*openjdk"
#   set /mnt/nxp-sdk/sources/poky/meta/conf/documentation.conf:95
#     [doc] "Prevents BitBake from processing specific recipes or recipe
append files. Use the BBMASK variable from within conf/local.conf."
# pre-expansion value:
#   ".*openjre|.*openjdk"
BBMASK=".*openjre|.*openjdk"

 Thanks again for helping me to understand this stuff.

- Chris

--94eb2c124ac0323a570549b8baca
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Mar 1, 2017 at 5:39 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a =
href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.egglet=
on@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On Thursday, 2 March 2017 2:14:13 PM NZDT chris warth wr=
ote:<br>
<span class=3D"gmail-">&gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel=
.com">paul.eggleton@linux.intel.com</a><wbr>&gt; wrote:<br>
&gt; &gt; On Thursday, 2 March 2017 11:31:42 AM NZDT chris warth wrote:<br>
</span><span class=3D"gmail-">&gt; &gt;&gt; This vendor-supplied version of=
 yocto looks like 2.0, so the space<br>
&gt; &gt;&gt; separated expressions are not available.<br>
&gt; &gt;&gt; After putting some print statements in cooker.py I discovered=
 that<br>
&gt; &gt;&gt; appending to BBMASK in conf/bblayers.conf or conf/local.conf =
has no<br>
&gt; &gt;&gt; effect.=C2=A0 It was not until I modified BBMASK_forcevariabl=
e in my<br>
&gt; &gt;&gt; conf/bblayers.conf=C2=A0 that I saw any change in behavior.<b=
r>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; BBMASK_forcevariable =3D &quot;.*openjre|.*openjdk|.*qemu_<wb=
r>qoriq&quot;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; This inability to modify BBMASK unless using _forcevariable w=
as also<br>
&gt; &gt;&gt; noted last year.<br>
&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/201=
6-September/032033.html" rel=3D"noreferrer" target=3D"_blank">https://lists=
.yoctoproject.<wbr>org/pipermail/yocto/2016-<wbr>September/032033.html</a><=
br>
&gt; &gt;<br>
&gt; &gt; That sounds strange. Did you use bitbake -e | less to see where y=
our non-<br>
&gt; &gt; forcevariable setting was being overridden? More than likely you =
have a<br>
&gt; &gt; layer or some other configuration you&#39;re bringing in and that=
&#39;s simply<br>
&gt; &gt; setting it with =3D at some point later in parsing than local.con=
f. The<br>
&gt; &gt; history of the BBMASK variable shown through bitbake -e will tell=
 you<br>
&gt; &gt; exactly where that is.<br>
&gt;<br>
</span><span class=3D"gmail-">&gt; Thank you, Paul.=C2=A0 I didn&#39;t know=
 about bitbake -e.<br>
&gt; As you predicted, it shows that an earlier layer is setting BBMASK<br>
&gt; with equals, in this case the<br>
&gt; meta-freescale layer.<br>
&gt;<br>
&gt; BBMASK=3D&quot;.*openjre|.*openjdk&quot;<br>
&gt;<br>
&gt; Should I be mad at the vendor for being careless?<br>
<br>
</span>Personally I think you should, yes. BSP layers really should not be =
setting<br>
BBMASK, IMO. Interestingly though I can&#39;t see this BBMASK in meta-fsl-a=
rm /<br>
meta-fsl-ppc either in current master or in the history for master - where =
is<br>
this exactly?<br>
<span class=3D"gmail-"><br></span></blockquote><div><br></div><div>FWIW, Th=
is is in a SDK for the LS1046A development board supplied by NXP as a coupl=
e of ISO images and a tarball in late 2016. =C2=A0 =C2=A0For the most part =
it seems to be based on publicly accessible sources although the ls1046a-rd=
b support comes from cached copies of internal NXP git repos (e.g. <a href=
=3D"http://sw-stash.freescale.net/scm/dnnpi">sw-stash.freescale.net/scm/dnn=
pi</a>). =C2=A0=C2=A0</div><div><br></div><div>Here is the bitbake -e outpu=
t showing BBMASK</div><div><br></div><div># $BBMASK [2 operations]</div><di=
v># =C2=A0 set /mnt/nxp-sdk/sources/meta-freescale/conf/machine/include/qor=
iq-arm64.inc:9</div><div># =C2=A0 =C2=A0 &quot;.*openjre|.*openjdk&quot;</d=
iv><div># =C2=A0 set /mnt/nxp-sdk/sources/poky/meta/conf/documentation.conf=
:95</div><div># =C2=A0 =C2=A0 [doc] &quot;Prevents BitBake from processing =
specific recipes or recipe append files. Use the BBMASK variable from withi=
n conf/local.conf.&quot;</div><div># pre-expansion value:</div><div># =C2=
=A0 &quot;.*openjre|.*openjdk&quot;</div><div>BBMASK=3D&quot;.*openjre|.*op=
enjdk&quot;</div><div><br></div><div>=C2=A0Thanks again for helping me to u=
nderstand this stuff.</div><div><br></div><div>- Chris</div></div></div></d=
iv>

--94eb2c124ac0323a570549b8baca--
