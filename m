Return-Path: <navani.srivastava@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9097E0086B; Mon, 22 Sep 2014 02:18:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (navani.srivastava[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F567E00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 02:18:45 -0700 (PDT)
Received: by mail-ig0-f174.google.com with SMTP id r10so2324380igi.13
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 02:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=nFQZ+4v/6xwslJRbF8NoQCcWZlCVcebIJkJ2Kz0GXbQ=;
	b=RrCkqpJ/txWnSw4zmWNNEfZ89n1j9cK8TgtfNTuGxEOOBk/PJpobRWvcESBdPkTCZF
	iPSNB2mHszBYb736c14U0qcJlsb8DX0TGcT2vDOq25XhXAuALbMqNqQn7u7odtJUyNm+
	jO/I6Drtucd9Van0QKLxm+1N7xF1cd3A7ji+BDI81OVJxJdNZWwuJ0Nlwmfx8OXmyynu
	g2oRQBhg4F+EoixljRbGd5n62f1XRhe8OzsmKVaO9qDzMsZNc2vgx6VOrQAVAlnK6Lxz
	iKipye30QFUXHrIaIWm43ILPYPQ1mdATuB24sk5nLg5eEpipvaFvVrvjotfY1Vlb5J3j
	teew==
X-Received: by 10.50.85.38 with SMTP id e6mr12942070igz.5.1411377525019; Mon,
	22 Sep 2014 02:18:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.217 with HTTP; Mon, 22 Sep 2014 02:18:24 -0700 (PDT)
In-Reply-To: <2002943.O9tR5uaDDD@peggleto-mobl5.ger.corp.intel.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<26633520.FLER5Y4OlA@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkWSwoqcn9HBttOn1jrTaX5X=OhLLGVsex5TqzWcHGG1LQ@mail.gmail.com>
	<2002943.O9tR5uaDDD@peggleto-mobl5.ger.corp.intel.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Mon, 22 Sep 2014 14:48:24 +0530
Message-ID: <CA+Z6RkWN=wbJkf94rwPWNqDKdGvhGPRvdTXFjqM+Uho8mTCzkg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Navani Srivastava <navani.srivastava@lnttechservices.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Mon, 22 Sep 2014 09:18:48 -0000
Content-Type: multipart/alternative; boundary=089e0149c67a05dd1d0503a3f0eb

--089e0149c67a05dd1d0503a3f0eb
Content-Type: text/plain; charset=UTF-8

I will follow the suggestion given by you and will update the result.
However in case if I want to integrate custom recipe with
meta-toolchain-qte, is there any example existing which can help me in
understanding?

Right now I am following the procedure given by Randy but some example
could be of a great help!!

Regards

Navani

On Mon, Sep 22, 2014 at 2:21 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 22 September 2014 14:06:26 Navani Srivastava wrote:
> > On Mon, Sep 22, 2014 at 1:45 PM, Paul Eggleton <
> > paul.eggleton@linux.intel.com> wrote:
> > > On Sunday 21 September 2014 09:26:07 Navani Srivastava wrote:
> > > > We are not using populatesdk ... we need to generate it through
> > > > meta-toolchain-qte only so i am trying with the solution provided by
> > > > randy..
> > >
> > > Can I ask why? I'd like to understand where -c populate_sdk needs
> further
> > > improvement.
> >
> > I have to generate toolchain which contain qt related tools also like
> qmake
> > and qjson, so we are using meta-toolchain-qte to generate the toolchain..
> > Do you suggest it's better to integrate meta-toolchain-qte somehow with
> > populate_sdk so that we can make life easier?
>
> It is possible to integrate the two - all you need to do is ensure the
> extra
> qte tools get added to the SDK. One way to achieve this would be to add the
> following to your image recipe:
>
> QTNAME = "qte"
> QT_DIR_NAME = "qtopia"
> require recipes-qt/meta/meta-toolchain-qt.inc
>
> (I haven't tested this so I'm not 100% sure if it will work, but it
> should.)
>
> Cheers,
> Paul
>
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e0149c67a05dd1d0503a3f0eb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"">I will follow the suggestion given by you an=
d will update
the result. However in case if I want to integrate custom recipe with
meta-toolchain-qte, is there any example existing which can help me in
understanding?</p>

<p class=3D"">Right now I am following the procedure given by Randy but
some example could be of a great help!!</p><p class=3D"">Regards</p><p clas=
s=3D"">Navani</p></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Mon, Sep 22, 2014 at 2:21 PM, Paul Eggleton <span dir=3D"ltr">&lt;=
<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.egg=
leton@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><span class=3D"">On Monday 22 September 2014 14:06:26 Navani Srivastava =
wrote:<br>
&gt; On Mon, Sep 22, 2014 at 1:45 PM, Paul Eggleton &lt;<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.i=
ntel.com</a>&gt; wrote:<br>
&gt; &gt; On Sunday 21 September 2014 09:26:07 Navani Srivastava wrote:<br>
&gt; &gt; &gt; We are not using populatesdk ... we need to generate it thro=
ugh<br>
&gt; &gt; &gt; meta-toolchain-qte only so i am trying with the solution pro=
vided by<br>
&gt; &gt; &gt; randy..<br>
&gt; &gt;<br>
&gt; &gt; Can I ask why? I&#39;d like to understand where -c populate_sdk n=
eeds further<br>
&gt; &gt; improvement.<br>
&gt;<br>
</span><span class=3D"">&gt; I have to generate toolchain which contain qt =
related tools also like qmake<br>
&gt; and qjson, so we are using meta-toolchain-qte to generate the toolchai=
n..<br>
&gt; Do you suggest it&#39;s better to integrate meta-toolchain-qte somehow=
 with<br>
&gt; populate_sdk so that we can make life easier?<br>
<br>
</span>It is possible to integrate the two - all you need to do is ensure t=
he extra<br>
qte tools get added to the SDK. One way to achieve this would be to add the=
<br>
following to your image recipe:<br>
<br>
QTNAME =3D &quot;qte&quot;<br>
QT_DIR_NAME =3D &quot;qtopia&quot;<br>
require recipes-qt/meta/meta-toolchain-qt.inc<br>
<br>
(I haven&#39;t tested this so I&#39;m not 100% sure if it will work, but it=
 should.)<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--089e0149c67a05dd1d0503a3f0eb--
