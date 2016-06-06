Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36243E0085E; Mon,  6 Jun 2016 14:11:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f65.google.com (mail-qg0-f65.google.com
	[209.85.192.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA2EFE00849
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 14:10:59 -0700 (PDT)
Received: by mail-qg0-f65.google.com with SMTP id z67so7702484qgz.1
	for <yocto@yoctoproject.org>; Mon, 06 Jun 2016 14:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qwFp+xsSUsXK+4ExW+H+8opj30vQc7S/vfJ6kAGkI9k=;
	b=IfLxbwBheVnouUlhGhAFPy93Juvrz3w/4Q0TaJHqDv2k+Bw66mHhki5JC2Ri0bC06r
	+8RxmRzgonV0cXZ5zDY5LrwPKWhlRwVP3sdQvqZNvwDpsNOzPvrnNdiyThWAofYjTP6K
	Wet5kC5q2JkY8hmICplOgxq68AxJn2wL7QTmuKIE9zyYy/p16/yh81fOm5Of8CE3nt1a
	lD0YWrL0db3hlHHbe9a1s1KiJq7I6bLJDfg+YFHrtEWONFA9VBPsuzxtEj/ho3ZIohFG
	TcOcT8b+imSvgq/80k41YEGIvbBemDjPL0lWLjJnaPxFOAyHhtdfurMORkDXtBleNC2b
	/7kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qwFp+xsSUsXK+4ExW+H+8opj30vQc7S/vfJ6kAGkI9k=;
	b=QL7XhF2Pq8Z/W9XnrgLWYcMrc93Vs2IIPe1IpMvaCPwOhHR4mHfwVTVw8ntblXTj0A
	iq82ZMkRGdWLvDTTzu8EUe9h8ANM95xJ/tHQEG0GqENFWfK6B49IRBxcze4pH5/FYqP5
	bXcqVCCPVprxeNVw+FFMQ1usKiHuKZoETs5SnXeWxqWrz1QvNv46cetleif3ibIAbT+e
	1pR6c2/P37vxZ9rhu6rz6JRZNMQuGt1+THTRWvSt+DNd1//Ndfpcdj+9zqU/U50j1IM+
	IyVJS12WBNFUjdJezG0wdjaq1eycJqEjjzK1DEYgOz46H3X4Kaz6lC4gTCqx/VbnoA+w
	v5CQ==
X-Gm-Message-State: ALyK8tKvQc0wHFX6mEuarRaS6xbWGcCTNdypELjVKL4KMXqgqBdmGAb6NmG+XdM+vUDDs6Rj10Q6GR11/6HusQ==
X-Received: by 10.140.41.178 with SMTP id z47mr6814047qgz.25.1465247458571;
	Mon, 06 Jun 2016 14:10:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.32.36 with HTTP; Mon, 6 Jun 2016 14:10:58 -0700 (PDT)
In-Reply-To: <CAGMdoF=40Z=5MRZ-YBvZrfrYO9pJ9WTixu36FqRiX0i3zvNkKw@mail.gmail.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<16838317.pTU33ZpYG7@peggleto-mobl.ger.corp.intel.com>
	<CAEeWubLNuGrjFA1ydAkbi_hDu=P7T4nwkrDL2Ws0cvKRk8WHxQ@mail.gmail.com>
	<2192667.NjFLBh3Ny5@ip-192-168-197-87.eu-west-1.compute.internal>
	<CAEeWubJiiAh4w9b4HM_WaTK9U95ZEj=1uvsJdOnmTW7GTX=nBw@mail.gmail.com>
	<CAGMdoF=40Z=5MRZ-YBvZrfrYO9pJ9WTixu36FqRiX0i3zvNkKw@mail.gmail.com>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Date: Tue, 7 Jun 2016 00:10:58 +0300
Message-ID: <CAEeWubJaaGLOVWdcS0uc=tv_cYkGRMFa2prLJ6jnDJAah+8G8Q@mail.gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, Diego <diego.ml@zoho.com>,
	yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Mon, 06 Jun 2016 21:11:01 -0000
Content-Type: multipart/alternative; boundary=001a11c11cb046bc580534a282fc

--001a11c11cb046bc580534a282fc
Content-Type: text/plain; charset=UTF-8

Hi,
Unfortunately You can't have two *.bbappend files per one package (recipe).

You can create two new recipes where You'll install what You need and plus
add sysvinit-inittab to DEPENDS variable in those recipes. This will help
to retain the order of packages installation. Original sysvinit -> your
sysvinit.

In this situation You will have several recipes.

Thanks,
Oleksandr Poznyak!

On Mon, Jun 6, 2016 at 11:55 PM, Edward Wingate <edwingate8@gmail.com>
wrote:

> On Wed, Jun 1, 2016 at 7:15 PM, Diego <diego.ml@zoho.com> wrote:
> >
> > Hi Oleksandr,
> >
> > your approach is really interesting, but I'm unsure how to proceed with
> > step 2) of your list.
> >
> > I've added the following in the bbappend:
> >
> > python do_package_prepend() {
> >     d.setVar('PACKAGES', "${PACKAGES} ${PN}-fstab-regular
> ${PN}-fstab-flash")
> > }
> >
> > which creates the two additional packages, but then I'm confused on how
> to
> > manage the two 'variant' fstab files. The FILES variable doesn't support
> > "source -> destination", so how do I manage the fact that two different
> > files need to go to the same destination path?
> >
> > An easier option would be to remove fstab in the base-files_%s.bbappend,
> > and create 2 different .bb recipes for the 2 fstab files.
>
> I hope you don't mind if I tag onto this thread, but I have a similar
> question.
>
> I've been modifying inittab with a sysvinit-inittab_2.88dsf.bbappend
> file that contains simply this:
>
> do_install_append() {
>     echo "scra:2345:respawn:/opt/script1.sh" >> ${D}${sysconfdir}/inittab
>     echo "scrb:2345:respawn:/opt/script2.sh" >> ${D}${sysconfdir}/inittab
> }
>
> Now, I want to do this if a different image is being created:
>
> do_install_append() {
>     echo "scra:2345:respawn:/opt/script3.sh" >> ${D}${sysconfdir}/inittab
>     echo "scrb:2345:respawn:/opt/script4.sh" >> ${D}${sysconfdir}/inittab
> }
>
> Can I duplicate and rename the bbappend file to have a different
> bbappend execute based on the image being created?  Or perhaps
> duplicate the do_install_append() function in the same file and rename
> the functions to something like do_install_append_[something with
> image name]()?
>
> Or alternatively, can I set something in the image bb files that I can
> then use in the sysvinit-inittab_2.88dsf.bbappend to determine which
> to do?
>
> Thanks for your help.
>

--001a11c11cb046bc580534a282fc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>Unfortunately You can&#39;t have two *.=
bbappend files per one package (recipe).=C2=A0</div><div><br></div><div>You=
 can create two new recipes where You&#39;ll install what You need and plus=
 add sysvinit-inittab to DEPENDS variable in those recipes. This will help =
to retain the order of packages installation. Original sysvinit -&gt; your =
sysvinit.</div><div><br></div><div>In this situation You will have several =
recipes.</div><div><br></div><div>Thanks,</div><div>Oleksandr Poznyak!</div=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Ju=
n 6, 2016 at 11:55 PM, Edward Wingate <span dir=3D"ltr">&lt;<a href=3D"mail=
to:edwingate8@gmail.com" target=3D"_blank">edwingate8@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Wed, Jun 1=
, 2016 at 7:15 PM, Diego &lt;<a href=3D"mailto:diego.ml@zoho.com">diego.ml@=
zoho.com</a>&gt; wrote:<br>
&gt;<br>
</span><span class=3D"">&gt; Hi Oleksandr,<br>
&gt;<br>
&gt; your approach is really interesting, but I&#39;m unsure how to proceed=
 with<br>
&gt; step 2) of your list.<br>
&gt;<br>
&gt; I&#39;ve added the following in the bbappend:<br>
&gt;<br>
&gt; python do_package_prepend() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0d.setVar(&#39;PACKAGES&#39;, &quot;${PACKAGES} ${PN=
}-fstab-regular ${PN}-fstab-flash&quot;)<br>
&gt; }<br>
&gt;<br>
&gt; which creates the two additional packages, but then I&#39;m confused o=
n how to<br>
&gt; manage the two &#39;variant&#39; fstab files. The FILES variable doesn=
&#39;t support<br>
&gt; &quot;source -&gt; destination&quot;, so how do I manage the fact that=
 two different<br>
&gt; files need to go to the same destination path?<br>
&gt;<br>
&gt; An easier option would be to remove fstab in the base-files_%s.bbappen=
d,<br>
&gt; and create 2 different .bb recipes for the 2 fstab files.<br>
<br>
</span>I hope you don&#39;t mind if I tag onto this thread, but I have a si=
milar question.<br>
<br>
I&#39;ve been modifying inittab with a sysvinit-inittab_2.88dsf.bbappend<br=
>
file that contains simply this:<br>
<br>
do_install_append() {<br>
=C2=A0 =C2=A0 echo &quot;scra:2345:respawn:/opt/script1.sh&quot; &gt;&gt; $=
{D}${sysconfdir}/inittab<br>
=C2=A0 =C2=A0 echo &quot;scrb:2345:respawn:/opt/script2.sh&quot; &gt;&gt; $=
{D}${sysconfdir}/inittab<br>
}<br>
<br>
Now, I want to do this if a different image is being created:<br>
<br>
do_install_append() {<br>
=C2=A0 =C2=A0 echo &quot;scra:2345:respawn:/opt/script3.sh&quot; &gt;&gt; $=
{D}${sysconfdir}/inittab<br>
=C2=A0 =C2=A0 echo &quot;scrb:2345:respawn:/opt/script4.sh&quot; &gt;&gt; $=
{D}${sysconfdir}/inittab<br>
}<br>
<br>
Can I duplicate and rename the bbappend file to have a different<br>
bbappend execute based on the image being created?=C2=A0 Or perhaps<br>
duplicate the do_install_append() function in the same file and rename<br>
the functions to something like do_install_append_[something with<br>
image name]()?<br>
<br>
Or alternatively, can I set something in the image bb files that I can<br>
then use in the sysvinit-inittab_2.88dsf.bbappend to determine which<br>
to do?<br>
<br>
Thanks for your help.<br>
</blockquote></div><br></div>

--001a11c11cb046bc580534a282fc--
