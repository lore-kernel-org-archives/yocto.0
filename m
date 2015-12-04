Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9C8CE009B6; Fri,  4 Dec 2015 07:12:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E514E00978
	for <yocto@yoctoproject.org>; Fri,  4 Dec 2015 07:12:00 -0800 (PST)
Received: by lbbcs9 with SMTP id cs9so22138514lbb.1
	for <yocto@yoctoproject.org>; Fri, 04 Dec 2015 07:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=twR1+XV+CrxIvh89n9q2dIR+Uq47RI51t7iApejl2Wk=;
	b=ZBG0L0cokuGsi0LhamO79YdhLbFcehfkwnC2ls2GWI8N/5BDuXm01xyrHBNFR9xoRh
	R7q0DUY3YVFy1gCZ6MSFaXgxRp6+T3j1TeLpUfD2cL9S43WxAUCoXR6dQsd0TRSqrWZ5
	VhblGr65eX9SfcNNMOhLDcJwY1pmzsxyysvlK/8yp7WvtvZK2lk/W2tGLMzHXFBWmQj5
	tr5H+/KT8Jtdkbb4xL+Z/qjiDcPh7QUfh09eeGyU4kGQajMDnuH5CqEI8kkHdILtcXjg
	/9rio+HhjaCHC2SM1l4P4MBUEX7F3LBksOiRjjZLIFlbAV4fbq4Z6bWZRxgR7NJ4u5PZ
	ycxg==
MIME-Version: 1.0
X-Received: by 10.112.184.45 with SMTP id er13mr7928296lbc.133.1449241919284; 
	Fri, 04 Dec 2015 07:11:59 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Fri, 4 Dec 2015 07:11:59 -0800 (PST)
In-Reply-To: <BN3PR0501MB109081CFF721741E6E0189EDBB0C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
	<BN3PR0501MB1090CB712DB3C7DE23120AA3BB0F0@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<CAOsp8o9N0K0+ZgUcS7vdQE55NDaRW1F7a+cZsN3TTvA4LUW8hw@mail.gmail.com>
	<CAOsp8o9EtJmV97pQRrB1Wt9hr4S1b0vbNKgL6bPTuuO-L25GWQ@mail.gmail.com>
	<BN3PR0501MB109081CFF721741E6E0189EDBB0C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
Date: Fri, 4 Dec 2015 09:11:59 -0600
Message-ID: <CAOsp8o_G7rscackTzW_pwQ2bYAH_cx=9PyzC4Gvv1B3K3thd1A@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best practice for files copied directly into sysroot?
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
X-List-Received-Date: Fri, 04 Dec 2015 15:12:07 -0000
Content-Type: multipart/alternative; boundary=001a1133f450caf013052613ed48

--001a1133f450caf013052613ed48
Content-Type: text/plain; charset=UTF-8

This is perfect, thanks Bryan.

On Fri, Dec 4, 2015 at 8:03 AM, Bryan Evenson <bevenson@melinkcorp.com>
wrote:

> Michael,
>
> > -----Original Message-----
> > From: Michael Habibi [mailto:mikehabibi@gmail.com]
> > Sent: Thursday, December 03, 2015 5:54 PM
> > To: Bryan Evenson <bevenson@melinkcorp.com>
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Best practice for files copied directly into
> sysroot?
> >
> > Bryan,
> >
> > I looked through the documentation and I'm a bit unclear on how to use
> > bin_package, and haven't been able to find a good example. Where do I
> > actually place my rootfs files/binaries to get copied to my image rootfs?
> > Under ${THISDIR}/${PN} like other recipe artifacts? How does it copy
> them to
> > ${S}? Or is this something I need to do?
> >
>
> I just modified one of my recipes yesterday to use bin_package yesterday
> and found out a few nuances that make it easier to use.  Proper setup of
> the files to copy is key.  The manual states " The bin_package class works
> well when the files extracted into ${S} are already laid out in the way
> they should be laid out on the target."  By default, any files listed as
> "file://" in SRC_URI are copied to ${WORKDIR}, and if they are a compressed
> archive (.tar.gz, .zip) they are uncompressed under ${WORKDIR}.  If you
> create a tarball with the files in the locations (and permissions!) that
> you want on the final image, then the bin_package class will do the rest of
> the work.  However, you need the files in the tarball to be one directory
> level down so that they are installed on the image properly.
>
> Let's assume you have a recipe under meta-mylayer/recipes-mine/my-app/
> called my-app_1.0.0.bb.  You have an executable called my-app that you
> want to install in /usr/bin/, a configuration file called my-app.conf that
> you want to install at /usr/share/my-app/ and documentation called
> my-app.pdf you want to install at /usr/share/info/.  You want all this to
> be under a directory so that when the tarball gets unpacked under
> ${WORKDIR} the files and directories you want on the final image are under
> ${S}.  ${S} defaults to ${WORKDIR}/${BP}, which in this case would be
> ${WORKDIR}/my-app-1.0.0.  So if you created the following directory
> structure:
>
> my-app-1.0.0/
>     usr/
>         bin/
>             my-app
>         info/
>             my-app.pdf
>         my-app/
>             my-app.conf
>
> Again, remember to set the directory and file permissions as you want on
> the final image.  Then create a tarball from the directory you laid out
> called my-app-1.0.0.tar.gz and place it under
> meta-mylayer/recipes-mine/my-app/files/.  Then create your recipe as:
>
> SUMMARY = "summary here"
> SECTION = "proper section name here"
> LICENSE = "license name here"
> LIC_FILES_CHKSUM = "license path and MD5sum here"
>
> SRC_URI = "file://${BP}.tar.gz"
> inherit bin_package
>
> The system will then package your files and install them onto the image
> where they belong.  These are the only lines you need in your recipe other
> than the standard header variables.  In the future, if you have a new
> version then just recreate the tarball with the updated files and rename
> the tarball to match the new version.  Although I am having issues with the
> license; I haven't figured out where to put it and what to set
> LIC_FILES_CHKSUM to in the recipe so that bitbake can find the license.  If
> anyone has a good answer for that, let me know.
>
> Regards,
> Bryan
>
> > Thanks,
> > Michael
> >
> > On Tue, Dec 1, 2015 at 2:03 PM, Michael Habibi <mikehabibi@gmail.com
> > <mailto:mikehabibi@gmail.com> > wrote:
> >
> >
> >       Thanks Bryan!
> >
> >       On Tue, Dec 1, 2015 at 1:50 PM, Bryan Evenson
> > <bevenson@melinkcorp.com <mailto:bevenson@melinkcorp.com> > wrote:
> >
> >
> >               Michael,
> >
> >
> >               > -----Original Message-----
> >               > From: yocto-bounces@yoctoproject.org <mailto:yocto-
> > bounces@yoctoproject.org>  [mailto:yocto- <mailto:yocto->
> >               > bounces@yoctoproject.org
> > <mailto:bounces@yoctoproject.org> ] On Behalf Of Michael Habibi
> >               > Sent: Tuesday, December 01, 2015 10:26 AM
> >               > To: yocto@yoctoproject.org
> > <mailto:yocto@yoctoproject.org>
> >               > Subject: [yocto] Best practice for files copied directly
> into
> > sysroot?
> >               >
> >               > I am working on potentially migrating our distribution to
> > Yocto (will be a long,
> >               > long process). We have an area of our filesystem where
> > any file placed will go
> >               > directly into the rootfs of the target. This works well
> with
> > our product, as we
> >               > have certain binaries and scripts that need to be copied
> > directly, and there's
> >               > no other real step involved (no compilation, etc). Is
> there a
> > best practice or
> >               > existing class that handles this? I saw mention of a
> binary/
> > directory but I
> >               > wasn't sure if that was for this or something else.
> >               >
> >               > Thanks,
> >               > Michael
> >
> >
> >               I'm glad I decided to answer your question because I think
> I
> > found an easier way to do it than I have been doing this in the past.
> If you
> > want to be able to update the files on your system at a later date, you
> will
> > want to make your own recipe which installs the binaries and scripts
> onto the
> > rootfs.  In general you create a recipe which does not have do_configure
> or
> > do_compile tasks.  There is a class that does this already called
> "bin_package"
> > that does this for you.  See the "Packaging Externally Produced Binaries"
> > section of the manual here: http://www.yoctoproject.org/docs/2.0/mega-
> > manual/mega-manual.html#new-recipe-testing-examples.   So if you include
> > the line "inherit bin_package" and follow the instructions in that
> section of
> > the manual, it should install all the files to the rootfs that are
> included in the
> > recipe.
> >
> >               Regards,
> >               Bryan
> >
> >
> >
> >
>
>

--001a1133f450caf013052613ed48
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is perfect, thanks Bryan.</div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Fri, Dec 4, 2015 at 8:03 AM, Bryan E=
venson <span dir=3D"ltr">&lt;<a href=3D"mailto:bevenson@melinkcorp.com" tar=
get=3D"_blank">bevenson@melinkcorp.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">Michael,<br>
<span class=3D""><br>
&gt; -----Original Message-----<br>
&gt; From: Michael Habibi [mailto:<a href=3D"mailto:mikehabibi@gmail.com">m=
ikehabibi@gmail.com</a>]<br>
&gt; Sent: Thursday, December 03, 2015 5:54 PM<br>
&gt; To: Bryan Evenson &lt;<a href=3D"mailto:bevenson@melinkcorp.com">beven=
son@melinkcorp.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: Re: [yocto] Best practice for files copied directly into sysr=
oot?<br>
&gt;<br>
&gt; Bryan,<br>
&gt;<br>
&gt; I looked through the documentation and I&#39;m a bit unclear on how to=
 use<br>
&gt; bin_package, and haven&#39;t been able to find a good example. Where d=
o I<br>
&gt; actually place my rootfs files/binaries to get copied to my image root=
fs?<br>
&gt; Under ${THISDIR}/${PN} like other recipe artifacts? How does it copy t=
hem to<br>
&gt; ${S}? Or is this something I need to do?<br>
&gt;<br>
<br>
</span>I just modified one of my recipes yesterday to use bin_package yeste=
rday and found out a few nuances that make it easier to use.=C2=A0 Proper s=
etup of the files to copy is key.=C2=A0 The manual states &quot; The bin_pa=
ckage class works well when the files extracted into ${S} are already laid =
out in the way they should be laid out on the target.&quot;=C2=A0 By defaul=
t, any files listed as &quot;file://&quot; in SRC_URI are copied to ${WORKD=
IR}, and if they are a compressed archive (.tar.gz, .zip) they are uncompre=
ssed under ${WORKDIR}.=C2=A0 If you create a tarball with the files in the =
locations (and permissions!) that you want on the final image, then the bin=
_package class will do the rest of the work.=C2=A0 However, you need the fi=
les in the tarball to be one directory level down so that they are installe=
d on the image properly.<br>
<br>
Let&#39;s assume you have a recipe under meta-mylayer/recipes-mine/my-app/ =
called <a href=3D"http://my-app_1.0.0.bb" rel=3D"noreferrer" target=3D"_bla=
nk">my-app_1.0.0.bb</a>.=C2=A0 You have an executable called my-app that yo=
u want to install in /usr/bin/, a configuration file called my-app.conf tha=
t you want to install at /usr/share/my-app/ and documentation called my-app=
.pdf you want to install at /usr/share/info/.=C2=A0 You want all this to be=
 under a directory so that when the tarball gets unpacked under ${WORKDIR} =
the files and directories you want on the final image are under ${S}.=C2=A0=
 ${S} defaults to ${WORKDIR}/${BP}, which in this case would be ${WORKDIR}/=
my-app-1.0.0.=C2=A0 So if you created the following directory structure:<br=
>
<br>
my-app-1.0.0/<br>
=C2=A0 =C2=A0 usr/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bin/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 my-app<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 info/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 my-app.pdf<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 my-app/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 my-app.conf<br>
<br>
Again, remember to set the directory and file permissions as you want on th=
e final image.=C2=A0 Then create a tarball from the directory you laid out =
called my-app-1.0.0.tar.gz and place it under meta-mylayer/recipes-mine/my-=
app/files/.=C2=A0 Then create your recipe as:<br>
<br>
SUMMARY =3D &quot;summary here&quot;<br>
SECTION =3D &quot;proper section name here&quot;<br>
LICENSE =3D &quot;license name here&quot;<br>
LIC_FILES_CHKSUM =3D &quot;license path and MD5sum here&quot;<br>
<br>
SRC_URI =3D &quot;file://${BP}.tar.gz&quot;<br>
inherit bin_package<br>
<br>
The system will then package your files and install them onto the image whe=
re they belong.=C2=A0 These are the only lines you need in your recipe othe=
r than the standard header variables.=C2=A0 In the future, if you have a ne=
w version then just recreate the tarball with the updated files and rename =
the tarball to match the new version.=C2=A0 Although I am having issues wit=
h the license; I haven&#39;t figured out where to put it and what to set LI=
C_FILES_CHKSUM to in the recipe so that bitbake can find the license.=C2=A0=
 If anyone has a good answer for that, let me know.<br>
<br>
Regards,<br>
Bryan<br>
<span class=3D""><br>
&gt; Thanks,<br>
&gt; Michael<br>
&gt;<br>
&gt; On Tue, Dec 1, 2015 at 2:03 PM, Michael Habibi &lt;<a href=3D"mailto:m=
ikehabibi@gmail.com">mikehabibi@gmail.com</a><br>
</span><span class=3D"">&gt; &lt;mailto:<a href=3D"mailto:mikehabibi@gmail.=
com">mikehabibi@gmail.com</a>&gt; &gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Thanks Bryan!<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Tue, Dec 1, 2015 at 1:50 PM, Bryan Evenso=
n<br>
</span><span class=3D"">&gt; &lt;<a href=3D"mailto:bevenson@melinkcorp.com"=
>bevenson@melinkcorp.com</a> &lt;mailto:<a href=3D"mailto:bevenson@melinkco=
rp.com">bevenson@melinkcorp.com</a>&gt; &gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Michael,<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -----Origin=
al Message-----<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; From: <a hr=
ef=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org=
</a> &lt;mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
</span><span class=3D"">&gt; <a href=3D"mailto:bounces@yoctoproject.org">bo=
unces@yoctoproject.org</a>&gt;=C2=A0 [mailto:<a href=3D"mailto:yocto-">yoct=
o-</a> &lt;mailto:<a href=3D"mailto:yocto-">yocto-</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"=
mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</a><br>
&gt; &lt;mailto:<a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctopr=
oject.org</a>&gt; ] On Behalf Of Michael Habibi<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Sent: Tuesd=
ay, December 01, 2015 10:26 AM<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To: <a href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
</span><div><div class=3D"h5">&gt; &lt;mailto:<a href=3D"mailto:yocto@yocto=
project.org">yocto@yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Subject: [y=
octo] Best practice for files copied directly into<br>
&gt; sysroot?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I am workin=
g on potentially migrating our distribution to<br>
&gt; Yocto (will be a long,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; long proces=
s). We have an area of our filesystem where<br>
&gt; any file placed will go<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; directly in=
to the rootfs of the target. This works well with<br>
&gt; our product, as we<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; have certai=
n binaries and scripts that need to be copied<br>
&gt; directly, and there&#39;s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; no other re=
al step involved (no compilation, etc). Is there a<br>
&gt; best practice or<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; existing cl=
ass that handles this? I saw mention of a binary/<br>
&gt; directory but I<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; wasn&#39;t =
sure if that was for this or something else.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Michael<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I&#39;m glad I d=
ecided to answer your question because I think I<br>
&gt; found an easier way to do it than I have been doing this in the past.=
=C2=A0 If you<br>
&gt; want to be able to update the files on your system at a later date, yo=
u will<br>
&gt; want to make your own recipe which installs the binaries and scripts o=
nto the<br>
&gt; rootfs.=C2=A0 In general you create a recipe which does not have do_co=
nfigure or<br>
&gt; do_compile tasks.=C2=A0 There is a class that does this already called=
 &quot;bin_package&quot;<br>
&gt; that does this for you.=C2=A0 See the &quot;Packaging Externally Produ=
ced Binaries&quot;<br>
&gt; section of the manual here: <a href=3D"http://www.yoctoproject.org/doc=
s/2.0/mega-" rel=3D"noreferrer" target=3D"_blank">http://www.yoctoproject.o=
rg/docs/2.0/mega-</a><br>
</div></div>&gt; manual/mega-manual.html#new-recipe-testing-examples.=C2=A0=
 =C2=A0So if you include<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt; the line &quot;inherit bin_pac=
kage&quot; and follow the instructions in that section of<br>
&gt; the manual, it should install all the files to the rootfs that are inc=
luded in the<br>
&gt; recipe.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Bryan<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div>

--001a1133f450caf013052613ed48--
