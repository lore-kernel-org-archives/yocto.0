Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82E23E00D87; Thu,  5 Oct 2017 16:12:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.143 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from volare.selinc.com (volare.selinc.com [74.117.214.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F411E00CE2
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 16:12:02 -0700 (PDT)
Received: from pps.filterd (volare.selinc.com [127.0.0.1])
	by volare.selinc.com (8.16.0.21/8.16.0.21) with SMTP id v95NB2Kj007044
	for <yocto@yoctoproject.org>; Thu, 5 Oct 2017 16:12:02 -0700
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by volare.selinc.com with ESMTP id 2da6tv945w-1
	for <yocto@yoctoproject.org>; Thu, 05 Oct 2017 16:12:02 -0700
In-Reply-To: <1681586.rUkS85rcXk@peggleto-mobl.ger.corp.intel.com>
References: <OFAC655E34.B4B3A1E0-ON882581AF.007C1B86-882581AF.007DD7C9@selinc.com>
	<1681586.rUkS85rcXk@peggleto-mobl.ger.corp.intel.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: D00D4004:940B8BF0-882581B0:007E6B92;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OFD00D4004.940B8BF0-ON882581B0.007E6B92-882581B0.007F71DA@selinc.com>
From: Aaron_Wright@selinc.com
Date: Thu, 5 Oct 2017 16:12:02 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP8|February  23,
	2017) at 10/05/2017 04:12:02 PM,
	Serialize complete at 10/05/2017 04:12:02 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8675
	signatures=668573
Subject: Re: local fetcher and devtool don't work well together
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
X-List-Received-Date: Thu, 05 Oct 2017 23:12:04 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 007F71D8882581B0_="

--=_alternative 007F71D8882581B0_=
Content-Type: text/plain; charset="US-ASCII"

Paul Eggleton <paul.eggleton@linux.intel.com> wrote on 10/04/2017 06:47:50 
PM:
> Hi Aaron,
> 
> On Thursday, 5 October 2017 11:54:32 AM NZDT Aaron_Wright@selinc.com 
wrote:
> > I have a recipe with:
> > 
> > SRC_URI = "file://a/b/c/d;subdir=src"
> > S = "${WORKDIR}/src/a/b/c/d"
> > 
> > First off, ${S} must be set to the full path because the basepath uri 
> > parameter[1] doesn't work. So this doesn't work:
> > 
> > SRC_URI = "file://a/b/c/d;subdir=src;basepath=a/b/c/d"
> > S = "${WORKDIR}/src"
> > 
> > I wish it would, but that's ok. I can deal with the long ${S} path as 
it 
> > compiles and works fine with bitbake. 
> 
> My question would be what are you trying to achieve here? Should you be 
using
> the externalsrc class perhaps?

I've waffled between externalsrc and the local fetcher, but the local 
fetcher seems to behave the best.

What I'm trying to do is a little odd, but we are trying to use yocto with 
the recipes, meta layer, and source code in the same repository. This 
makes the continuous integration server much simpler, and developers can 
see the results of their commit/push in the context of the whole product 
being put together with yocto.

This might not be the best idea, and yocto certainly seems to be based on 
the fact that the source is remote, but things are generally working well 
for us; at least continuous integration server wise. Right now I'm trying 
to figure out how to get developers developing.

>   https://urldefense.proofpoint.com/v2/url?
> 
u=http-3A__www.yoctoproject.org_docs_current_dev-2Dmanual_dev-2Dmanual.html-23building-2Dsoftware-2Dfrom-2Dan-2Dexternal-2Dsource&d=DwICAg&c=zVFQZQ67ypsA9mYKSCqWmQHiVkCCaN-
> Gb60_N6TVnLk&r=rUGbzRLPRvFX3fKfyNvK9Xgz1MfBXwYtoWGtKfkzG3k&m=o9VVMczGF-
> R7-
> 
EC8L6cShpCsU-3GWfug-0DbDpHLamU&s=JFZPoF89tSSrPhrhqmYSV5VrbkGpTM4jsqr1ij9sBa4&e=
> 
> > However, it doesn't work with 
> > devtool:
> > 
> > $ devtool modify -n d ~/mysrc/a/b/c/d
> > NOTE: Creating workspace layer in <... snip 
> > ...>/yocto/poky/build/workspace
> > NOTE: Enabling workspace layer in bblayers.conf
> > Parsing recipes..done.
> > NOTE: Recipe d now set up to build from ~/mysrc/a/b/c/d/b/c/d
> > 
> > Where is the extra 'b/c/d' coming from in where it will be built from? 

> > This directory is reflected in the bbappends created the workspace:
> > 
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > FILESPATH_prepend := "~/mysrc/a/b/c/d/b/c/d/oe-local-files:"
> >
> > Is it possible to have a ${S} of "${WORKDIR}/src" in this situation?
> > How can I get devtool to behave and not duplicate the path?
> 
> The ~ shouldn't be in the value of FILESPATH, it ought to be expanded, 
so
> that's something we need to fix. 

Don't worry about the ~, that was just something I passed in the email to 
obscure my path. Sorry.

> With regard to the path doubling of the
> subdirectories, it's assuming that because you have that subdirectory 
path in
> S then you need that underneath the specified source directory (since 
that is
> usually true if you were for example pointing to a checkout of a git
> repository, or an extracted source tarball).

You are correct. I can't believe I didn't think of that before. Thank you 
so much. That gets me going at least.

> devtool hasn't been written to handle this usage (which is unusual 
-typically
> the recipe is pointing at remote source). It would be good to get an
> understanding of your use case here so we can figure out where to go 
from
> here.
> 
> Cheers,
> Paul
> 
> -- 
> 
> Paul Eggleton
> Intel Open Source Technology Centre

--=_alternative 007F71D8882581B0_=
Content-Type: text/html; charset="US-ASCII"

<tt><font size=2>Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt; wrote
on 10/04/2017 06:47:50 PM:<br>
&gt; Hi Aaron,<br>
&gt; <br>
&gt; On Thursday, 5 October 2017 11:54:32 AM NZDT Aaron_Wright@selinc.com
wrote:<br>
&gt; &gt; I have a recipe with:<br>
&gt; &gt; <br>
&gt; &gt; SRC_URI = &quot;</font></tt><a href="file://a/b/c/d;subdir=src"><tt><font size=2>file://a/b/c/d;subdir=src</font></tt></a><tt><font size=2>&quot;<br>
&gt; &gt; S = &quot;${WORKDIR}/src/a/b/c/d&quot;<br>
&gt; &gt; <br>
&gt; &gt; First off, ${S} must be set to the full path because the basepath
uri <br>
&gt; &gt; parameter[1] doesn't work. So this doesn't work:<br>
&gt; &gt; <br>
&gt; &gt; SRC_URI = &quot;</font></tt><a href="file://a/b/c/d;subdir=src;basepath=a/b/c/d"><tt><font size=2>file://a/b/c/d;subdir=src;basepath=a/b/c/d</font></tt></a><tt><font size=2>&quot;<br>
&gt; &gt; S = &quot;${WORKDIR}/src&quot;<br>
&gt; &gt; <br>
&gt; &gt; I wish it would, but that's ok. I can deal with the long ${S}
path as it <br>
&gt; &gt; compiles and works fine with bitbake. <br>
&gt; <br>
&gt; My question would be what are you trying to achieve here? Should you
be using<br>
&gt; the externalsrc class perhaps?<br>
</font></tt>
<br><tt><font size=2>I've waffled between externalsrc and the local fetcher,
but the local fetcher seems to behave the best.</font></tt>
<br>
<br><tt><font size=2>What I'm trying to do is a little odd, but we are
trying to use yocto with the recipes, meta layer, and source code in the
same repository. This makes the continuous integration server much simpler,
and developers can see the results of their commit/push in the context
of the whole product being put together with yocto.</font></tt>
<br>
<br><tt><font size=2>This might not be the best idea, and yocto certainly
seems to be based on the fact that the source is remote, but things are
generally working well for us; at least continuous integration server wise.
Right now I'm trying to figure out how to get developers developing.</font></tt>
<br><tt><font size=2><br>
&gt; &nbsp; </font></tt><a href=https://urldefense.proofpoint.com/v2/url?><tt><font size=2>https://urldefense.proofpoint.com/v2/url?</font></tt></a><tt><font size=2><br>
&gt; u=http-3A__www.yoctoproject.org_docs_current_dev-2Dmanual_dev-2Dmanual.html-23building-2Dsoftware-2Dfrom-2Dan-2Dexternal-2Dsource&amp;d=DwICAg&amp;c=zVFQZQ67ypsA9mYKSCqWmQHiVkCCaN-<br>
&gt; Gb60_N6TVnLk&amp;r=rUGbzRLPRvFX3fKfyNvK9Xgz1MfBXwYtoWGtKfkzG3k&amp;m=o9VVMczGF-<br>
&gt; R7-<br>
&gt; EC8L6cShpCsU-3GWfug-0DbDpHLamU&amp;s=JFZPoF89tSSrPhrhqmYSV5VrbkGpTM4jsqr1ij9sBa4&amp;e=<br>
&gt; <br>
&gt; &gt; However, it doesn't work with <br>
&gt; &gt; devtool:<br>
&gt; &gt; <br>
&gt; &gt; $ devtool modify -n d ~/mysrc/a/b/c/d<br>
&gt; &gt; NOTE: Creating workspace layer in &lt;... snip <br>
&gt; &gt; ...&gt;/yocto/poky/build/workspace<br>
&gt; &gt; NOTE: Enabling workspace layer in bblayers.conf<br>
&gt; &gt; Parsing recipes..done.<br>
&gt; &gt; NOTE: Recipe d now set up to build from ~/mysrc/a/b/c/d/b/c/d<br>
&gt; &gt; <br>
&gt; &gt; Where is the extra 'b/c/d' coming from in where it will be built
from? <br>
&gt; &gt; This directory is reflected in the bbappends created the workspace:<br>
&gt; &gt; <br>
&gt; &gt; FILESEXTRAPATHS_prepend := &quot;${THISDIR}/${PN}:&quot;<br>
&gt; &gt; FILESPATH_prepend := &quot;~/mysrc/a/b/c/d/b/c/d/oe-local-files:&quot;<br>
&gt; &gt;<br>
&gt; &gt; Is it possible to have a ${S} of &quot;${WORKDIR}/src&quot; in
this situation?<br>
&gt; &gt; How can I get devtool to behave and not duplicate the path?<br>
&gt; <br>
&gt; The ~ shouldn't be in the value of FILESPATH, it ought to be expanded,
so<br>
&gt; that's something we need to fix. </font></tt>
<br>
<br><tt><font size=2>Don't worry about the ~, that was just something I
passed in the email to obscure my path. Sorry.</font></tt>
<br>
<br><tt><font size=2>&gt; With regard to the path doubling of the<br>
&gt; subdirectories, it's assuming that because you have that subdirectory
path in<br>
&gt; S then you need that underneath the specified source directory (since
that is<br>
&gt; usually true if you were for example pointing to a checkout of a git<br>
&gt; repository, or an extracted source tarball).<br>
</font></tt>
<br><tt><font size=2>You are correct. I can't believe I didn't think of
that before. Thank you so much. That gets me going at least.</font></tt>
<br><tt><font size=2><br>
&gt; devtool hasn't been written to handle this usage (which is unusual
-typically<br>
&gt; the recipe is pointing at remote source). It would be good to get
an<br>
&gt; understanding of your use case here so we can figure out where to
go from<br>
&gt; here.<br>
&gt; <br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt; <br>
&gt; -- <br>
&gt; <br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br>
</font></tt>

--=_alternative 007F71D8882581B0_=--
