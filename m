Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39052E00B97; Thu, 15 Jun 2017 01:13:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67CBDE00B77
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 01:13:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jun 2017 01:12:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,342,1493708400"; d="scan'208";a="99743811"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by orsmga002.jf.intel.com with ESMTP; 15 Jun 2017 01:12:53 -0700
Date: Thu, 15 Jun 2017 11:12:14 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Andre McCurdy <armccurdy@gmail.com>
Message-ID: <20170615081213.GA19437@mbabyjoh-desk.ger.corp.intel.com>
References: <1497442376-42554-1-git-send-email-maxin.john@intel.com>
	<CAJ86T=XU8Shd6LuQXBQbiLDPJqTU45crQH3pYA3F7QVwZRrYvQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJ86T=XU8Shd6LuQXBQbiLDPJqTU45crQH3pYA3F7QVwZRrYvQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto discussion list <yocto@yoctoproject.org>, srifenbark@gmail.com
Subject: Re: [PATCH] documentation: updates to static library support in SDK
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
X-List-Received-Date: Thu, 15 Jun 2017 08:13:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andre,

On Wed, Jun 14, 2017 at 10:57:41AM -0700, Andre McCurdy wrote:
> On Wed, Jun 14, 2017 at 5:12 AM, Maxin B. John <maxin.john@intel.com> wrote:
> > For development purposes, static libraries need to be
> > present only in the SDK. We do not need those static
> > libraries in the image for most scenarios. So, replace
> > IMAGE_INSTALL with TOOLCHAIN_TARGET_TASK in the documentation.
> >
> > Suggested-by: Anders Darander <anders@chargestorm.se>
> > Signed-off-by: Maxin B. John <maxin.john@intel.com>
> > ---
> >  documentation/adt-manual/adt-prepare.xml         | 8 ++++----
> >  documentation/sdk-manual/sdk-appendix-obtain.xml | 8 ++++----
> >  2 files changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
> > index 65df1d0..7587305 100644
> > --- a/documentation/adt-manual/adt-prepare.xml
> > +++ b/documentation/adt-manual/adt-prepare.xml
> > @@ -684,16 +684,16 @@
> >          <note>
> >              By default, this toolchain does not build static binaries.
> >              If you want to use the toolchain to build these types of libraries,
> > -            you need to be sure your image has the appropriate static
> > +            you need to be sure your SDK has the appropriate static
> >              development libraries.
> >              Use the
> > -            <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_INSTALL'><filename>IMAGE_INSTALL</filename></ulink>
> > +            <ulink url='&YOCTO_DOCS_REF_URL;#var-TOOLCHAIN_TARGET_TASK'><filename>TOOLCHAIN_TARGET_TASK</filename></ulink>
> >              variable inside your <filename>local.conf</filename> file to
> > -            install the appropriate library packages.
> > +            include the appropriate library packages in SDK.
> >              Following is an example using <filename>glibc</filename> static
> >              development libraries:
> >              <literallayout class='monospaced'>
> > -     IMAGE_INSTALL_append = " glibc-staticdev"
> > +     TOOLCHAIN_TARGET_TASK_append = " glibc-staticdev"
> 
> That should perhaps be "libc-staticdev" so the same instructions work
> for musl (although it looks like currently musl doesn't rprovide
> libc-staticdev so that would need to be fixed too).

I agree with your suggestion that examples in documentation shouldn't be
specific for a particular libc implementation.

Filed a bug for musl libc-staticdev support:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=11669

> >              </literallayout>
> >          </note>
> >      </para>
> > diff --git a/documentation/sdk-manual/sdk-appendix-obtain.xml b/documentation/sdk-manual/sdk-appendix-obtain.xml
> > index 3156f77..86e0eff 100644
> > --- a/documentation/sdk-manual/sdk-appendix-obtain.xml
> > +++ b/documentation/sdk-manual/sdk-appendix-obtain.xml
> > @@ -96,16 +96,16 @@
> >                  <listitem><para>
> >                      By default, this toolchain does not build static binaries.
> >                      If you want to use the toolchain to build these types of
> > -                    libraries, you need to be sure your image has the
> > +                    libraries, you need to be sure your SDK has the
> >                      appropriate static development libraries.
> >                      Use the
> > -                    <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_INSTALL'><filename>IMAGE_INSTALL</filename></ulink>
> > +                    <ulink url='&YOCTO_DOCS_REF_URL;#var-TOOLCHAIN_TARGET_TASK'><filename>TOOLCHAIN_TARGET_TASK</filename></ulink>
> >                      variable inside your <filename>local.conf</filename> file
> > -                    to install the appropriate library packages.
> > +                    to install the appropriate library packages in SDK.
> >                      Following is an example using <filename>glibc</filename>
> >                      static development libraries:
> >                      <literallayout class='monospaced'>
> > -     IMAGE_INSTALL_append = " glibc-staticdev"
> > +     TOOLCHAIN_TARGET_TASK_append = " glibc-staticdev"
> >                      </literallayout>
> >                      </para></listitem>

Best Regards,
Maxin

