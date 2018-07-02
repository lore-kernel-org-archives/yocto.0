Return-Path: <techieth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CFD6E01135; Mon,  2 Jul 2018 05:07:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (techieth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9600FE01129
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 05:07:05 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id p129-v6so6571036ywg.7
	for <yocto@yoctoproject.org>; Mon, 02 Jul 2018 05:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eiLfUw3KAsx8vjfNVjROJ96LvZl9vj/wq5NgbzNSfI4=;
	b=o0HWHZvJPbTFjaJzL0jKrtB74wLuc7rBbiGXT7mRdDUOn7zGLwY2/teJzK2/GAA8tY
	fbtcE8nC47Z3iKaZ+c/ZJz4rcDDHQs0H2s8vuq595j7D3kELCYojjGiyYygowSoTra8h
	1P6QQzcqH7JUH4PXRIcQctq+u0I2IjIGL8i8KqeeXszDqk4qYtjswbFoz8aE8193vSP9
	/D4UKs5HuoS6fnFGOWfHJtauDKqhJRz68T9cWzEW63sbY7+ku8bBMl0Dnyx9S//IEjFO
	hbj21jSu7Kv4g6t6bGxv3O+0tGpiPruyhrn8ZCiZRjtFeFXPx1DEcS+BBILTgJj5TAFZ
	zTzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eiLfUw3KAsx8vjfNVjROJ96LvZl9vj/wq5NgbzNSfI4=;
	b=jTo+39AgGsB8fu9DRsVsWLlQGP7d/1iivPotNFP2mxgz4SkOFg6jGYGlyTpJPsRtCb
	KCP+xUybSRVbKf5D8hOUpF8v6bmLL52jU0W8VnW/cCWTRuWGB2WmyEXus1ytZ26duibG
	7Morrq2eVnijASPej9ztl9FfNmKaoeSwz98ZYfZ7hx3DmGPWm21HA13fAGdKpp+LtJ93
	I3wwC1jACZUcFxtrKFRQd8R8nWOSQFDYi+yJTBAZhESoiNq72pEuPXJNc7ARlMSnKIM+
	JOlCR30PaYKh/6+SJ1Df/RMarhvkTmJcYXR7Fb2sRofhVWABuXtOzA+PfUnyvaHksa+d
	cG9w==
X-Gm-Message-State: APt69E3BmVlI8XdwqkwqmBsOzCqsZuUzXXQIhJztVvQ4TbdGeWd6+b5/
	ZvmF3eXz/t0zMuuzJtXWdibvw6fuCEvA9s0aRy8=
X-Google-Smtp-Source: AAOMgpdb0vgE0cjbO6m9PYevzJV+aJeJVTvDoa2ZAZSpyEEtbYK+94awfdJOZ3zcx8EUr8dya15odKa5sZyQFqaEI7I=
X-Received: by 2002:a81:5643:: with SMTP id
	k64-v6mr12358495ywb.512.1530533224920; 
	Mon, 02 Jul 2018 05:07:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a81:ae0b:0:0:0:0:0 with HTTP;
	Mon, 2 Jul 2018 05:07:04 -0700 (PDT)
In-Reply-To: <CAJO0J4i-ZRFBkrr5Lpr4uZ8DxFEmO-H0h_RCN6Ps+cFkaujPgQ@mail.gmail.com>
References: <CAJw2sSBnJWCWV84FDV=L4JX6EQg80Z-HvMAOnkCwKXaZboZCuQ@mail.gmail.com>
	<CAJw2sSDJOKV-aXrUEjmHGvQ7NxPmnMKgJn3njY_hAEka4HGrQg@mail.gmail.com>
	<CAJO0J4i-ZRFBkrr5Lpr4uZ8DxFEmO-H0h_RCN6Ps+cFkaujPgQ@mail.gmail.com>
From: techi eth <techieth@gmail.com>
Date: Mon, 2 Jul 2018 17:37:04 +0530
Message-ID: <CAJw2sSApH8GgP=GGXJzhBRmqaw=QW-BaFWtxZcpxDWwfzkuDQg@mail.gmail.com>
To: Paulo Neves <ptsneves@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Basehash value changed issue
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
X-List-Received-Date: Mon, 02 Jul 2018 12:07:06 -0000
Content-Type: multipart/alternative; boundary="000000000000303c3d05700309dd"

--000000000000303c3d05700309dd
Content-Type: text/plain; charset="UTF-8"

I have not got success of building my first image so it happen's to me
always. I also tried deleting tmp,cache folder & re-build again but problem
persist.
Is it something to do with timestamps ?

I do see below patch & applied changes but problem persist.
http://cgit.openembedded.org/openembedded-core/commit/?id=4af13a4855c74cea9cf6c168fd73165d7094bf93

Thanks

On Mon, Jul 2, 2018 at 5:27 PM, Paulo Neves <ptsneves@gmail.com> wrote:

> Does this happen always or only sometimes? If only sometimes you
> probably made changes to the recipe or dependent recipes while
> building. You cannot do that.
>
> On Mon, Jul 2, 2018 at 7:27 AM, techi eth <techieth@gmail.com> wrote:
> > Hi,
> >
> > Can anybody give me hint over below issue.
> >
> > Thanks
> >
> > ---------- Forwarded message ----------
> > From: techi eth <techieth@gmail.com>
> > Date: Thu, Jun 21, 2018 at 6:30 PM
> > Subject: Basehash value changed issue
> > To: yocto@yoctoproject.org
> >
> >
> > Hi,
> >
> > I am facing issue with basehash value changed while building image on
> one of
> > my test board (Ref of beagle bone) on morty branch.
> >
> > Error :
> > gateway.bb.do_rootfs, the basehash value changed from
> > e685a429b8df6dcff60063f087d425ee to 3f98a102f48ea8722835ad0d65bfbc1f.
> The
> > metadata is not deterministic and this needs to be fixed
> >
> > When i run bitbake-diffsigs -t gateway do_rootfs
> > I found below O/P.
> > basehash changed from 8e6b9498c9704590bd016491efcbf9f9 to
> > 3f98a102f48ea8722835ad0d65bfbc1f
> > Variable TIME value changed from '112854' to '115745'
> >
> > After googling I found that TIME need's to be added in vardepsexclude
> list.
> > I added below in conf/distro/machine.conf but error persist.
> > do_rootfs[vardepsexclude] = "TIME DATE DATETIME"
> >
> > Please suggest me where & what has to be added to come out of issue.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--000000000000303c3d05700309dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have not got success of building my first image so it ha=
ppen&#39;s to me always. I also tried deleting tmp,cache folder &amp; re-bu=
ild again but problem persist.<div>Is it something to do with timestamps ?<=
/div><div><br></div><div>I do see below patch &amp; applied changes but pro=
blem persist.</div><div><a href=3D"http://cgit.openembedded.org/openembedde=
d-core/commit/?id=3D4af13a4855c74cea9cf6c168fd73165d7094bf93">http://cgit.o=
penembedded.org/openembedded-core/commit/?id=3D4af13a4855c74cea9cf6c168fd73=
165d7094bf93</a><br></div><div><br></div><div>Thanks</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jul 2, 2018 at 5:27=
 PM, Paulo Neves <span dir=3D"ltr">&lt;<a href=3D"mailto:ptsneves@gmail.com=
" target=3D"_blank">ptsneves@gmail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">Does this happen always or only sometimes? If only some=
times you<br>
probably made changes to the recipe or dependent recipes while<br>
building. You cannot do that.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Mon, Jul 2, 2018 at 7:27 AM, techi eth &lt;<a href=3D"mailto:techieth@gm=
ail.com">techieth@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; Can anybody give me hint over below issue.<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt; ---------- Forwarded message ----------<br>
&gt; From: techi eth &lt;<a href=3D"mailto:techieth@gmail.com">techieth@gma=
il.com</a>&gt;<br>
&gt; Date: Thu, Jun 21, 2018 at 6:30 PM<br>
&gt; Subject: Basehash value changed issue<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am facing issue with basehash value changed while building image on =
one of<br>
&gt; my test board (Ref of beagle bone) on morty branch.<br>
&gt;<br>
&gt; Error :<br>
&gt; gateway.bb.do_rootfs, the basehash value changed from<br>
&gt; e685a429b8df6dcff60063f087d425<wbr>ee to 3f98a102f48ea8722835ad0d65bfb=
c<wbr>1f. The<br>
&gt; metadata is not deterministic and this needs to be fixed<br>
&gt;<br>
&gt; When i run bitbake-diffsigs -t gateway do_rootfs<br>
&gt; I found below O/P.<br>
&gt; basehash changed from 8e6b9498c9704590bd016491efcbf9<wbr>f9 to<br>
&gt; 3f98a102f48ea8722835ad0d65bfbc<wbr>1f<br>
&gt; Variable TIME value changed from &#39;112854&#39; to &#39;115745&#39;<=
br>
&gt;<br>
&gt; After googling I found that TIME need&#39;s to be added in vardepsexcl=
ude list.<br>
&gt; I added below in conf/distro/machine.conf but error persist.<br>
&gt; do_rootfs[vardepsexclude] =3D &quot;TIME DATE DATETIME&quot;<br>
&gt;<br>
&gt; Please suggest me where &amp; what has to be added to come out of issu=
e.<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--000000000000303c3d05700309dd--
