Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9A5AE00C3D; Mon,  7 Mar 2016 02:46:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD952E00BFF
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 02:46:04 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 07 Mar 2016 02:46:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,550,1449561600"; d="scan'208";a="928430366"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga002.jf.intel.com with ESMTP; 07 Mar 2016 02:46:03 -0800
Received: from irsmsx109.ger.corp.intel.com ([169.254.13.174]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.87]) with mapi id
	14.03.0248.002; Mon, 7 Mar 2016 10:45:45 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: akuster808 <akuster808@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] documentation: remove all references to Hob
Thread-Index: AQHReF6A0fFTZ1QPiUOW9PD04odULg==
Date: Mon, 7 Mar 2016 10:45:45 +0000
Message-ID: <D3030C18.75C45%belen.barros.pena@intel.com>
References: <1457110149-4756-1-git-send-email-belen.barros.pena@linux.intel.com>
	<56D9DFE2.3000107@gmail.com>
In-Reply-To: <56D9DFE2.3000107@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.1.160122
x-originating-ip: [10.237.224.34]
MIME-Version: 1.0
Subject: Re: [PATCH] documentation: remove all references to Hob
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
X-List-Received-Date: Mon, 07 Mar 2016 10:46:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <479B893BDF932647B34DE75F3F940C00@intel.com>
Content-Transfer-Encoding: quoted-printable



On 04/03/2016 19:20, "yocto-bounces@yoctoproject.org on behalf of
akuster808" <yocto-bounces@yoctoproject.org on behalf of
akuster808@gmail.com> wrote:

>On 3/4/16 8:49 AM, Belen Barros Pena wrote:
>> From: Belen Barros Pena <belen.barros.pena@intel.com>
>>
>> Hob and the packageinfo class have now been removed from the code base.
>> This patch removes all references to:
>>
>> * Hob
>> * meta-hob
>> * packageinfo and
>> * BBLAYERS_NON_REMOVABLE
>>
>> from the documentation.
>the build appliance page refers to HOB. does it need to updated?
>
>https://www.yoctoproject.org/documentation/build-appliance-manual

Yes, thanks for bringing it up. That and other bits and pieces on the
Yocto Project website need to be cleaned up as well. I'll be doing that
shortly.

Cheers

Bel=E9n

>
>- armin
>>
>> So long, Hob, and thanks for all the fish.
>>
>> Signed-off-by: Belen Barros Pena <belen.barros.pena@intel.com>
>> ---
>>  documentation/bsp-guide/bsp.xml                    |  5 --
>>  documentation/dev-manual/dev-manual-intro.xml      |  5 --
>>  documentation/dev-manual/dev-manual-model.xml      | 47
>>-------------------
>>  documentation/ref-manual/introduction.xml          |  4 --
>>  documentation/ref-manual/migration.xml             | 14 +-----
>>  documentation/ref-manual/ref-bitbake.xml           |  2 +-
>>  documentation/ref-manual/ref-classes.xml           | 16 -------
>>  documentation/ref-manual/ref-structure.xml         |  3 +-
>>  documentation/ref-manual/ref-variables.xml         | 54
>>----------------------
>>  .../toaster-manual/toaster-manual-intro.xml        | 19 --------
>>  10 files changed, 3 insertions(+), 166 deletions(-)
>>
>> diff --git a/documentation/bsp-guide/bsp.xml
>>b/documentation/bsp-guide/bsp.xml
>> index ec39ec9..8cf2a1e 100644
>> --- a/documentation/bsp-guide/bsp.xml
>> +++ b/documentation/bsp-guide/bsp.xml
>> @@ -1403,11 +1403,6 @@
>>          /usr/local/src/yocto/meta-yocto-bsp \
>>          /usr/local/src/yocto/meta-myarm \
>>          "
>> -
>> -     BBLAYERS_NON_REMOVABLE ?=3D " \
>> -        /usr/local/src/yocto/meta \
>> -        /usr/local/src/yocto/meta-yocto \
>> -        "
>>                      </literallayout>
>>                      Adding the layer to this file allows the build
>>system to build the BSP and
>>                      the <filename>yocto-kernel</filename> tool to be
>>able to find the layer and
>> diff --git a/documentation/dev-manual/dev-manual-intro.xml
>>b/documentation/dev-manual/dev-manual-intro.xml
>> index e350882..5affa86 100644
>> --- a/documentation/dev-manual/dev-manual-intro.xml
>> +++ b/documentation/dev-manual/dev-manual-intro.xml
>> @@ -169,11 +169,6 @@
>>                      release of the Yocto Project.
>>                      </para></listitem>
>>                  <listitem><para><emphasis>
>> -                    <ulink
>>url=3D'&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink>:</empha=
si
>>s>
>> -                    A graphical user interface for BitBake.
>> -                    Hob's primary goal is to enable a user to perform
>>common tasks more easily.
>> -                    </para></listitem>
>> -                <listitem><para><emphasis>
>>                      <ulink
>>url=3D'&YOCTO_HOME_URL;/tools-resources/projects/toaster'>Toaster</ulink>=
:<
>>/emphasis>
>>                      An Application Programming Interface (API) and
>>web-based
>>                      interface to the OpenEmbedded build system, which
>>uses
>> diff --git a/documentation/dev-manual/dev-manual-model.xml
>>b/documentation/dev-manual/dev-manual-model.xml
>> index 984d08d..489547d 100644
>> --- a/documentation/dev-manual/dev-manual-model.xml
>> +++ b/documentation/dev-manual/dev-manual-model.xml
>> @@ -48,12 +48,6 @@
>>               Toaster provides an efficient interface to the
>>OpenEmbedded build
>>               that allows you to start builds and examine build
>>statistics.
>>               </para></listitem>
>> -         <listitem><para><emphasis>Image Development using
>>Hob:</emphasis>
>> -             You can use the <ulink
>>url=3D'&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink>
>> -             to build custom operating system images within the build
>> -             environment.
>> -             Hob provides an efficient interface to the OpenEmbedded
>>build system.
>> -             </para></listitem>
>>           <listitem><para><emphasis>Using a Development
>>Shell:</emphasis>
>>               You can use a <filename>devshell</filename> to
>>efficiently debug
>>               commands or simply edit packages.
>> @@ -3189,47 +3183,6 @@
>>      </para>
>>  </section>
>> =20
>> -<section id=3D'image-development-using-hob'>
>> -    <title>Image Development Using Hob</title>
>> -
>> -    <para>
>> -        The <ulink
>>url=3D'&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink> is a
>>graphical user interface for the
>> -        OpenEmbedded build system, which is based on BitBake.
>> -        You can use the Hob to build custom operating system images
>>within the Yocto Project build environment.
>> -        Hob simply provides a friendly interface over the build system
>>used during development.
>> -        In other words, building images with the Hob lets you take
>>care of common build tasks more easily.
>> -    </para>
>> -
>> -    <para>
>> -        For a better understanding of Hob, see the project page at
>> -        <ulink=20
>>url=3D'&YOCTO_HOME_URL;/tools-resources/projects/hob'></ulink>
>> -        on the Yocto Project website.
>> -        If you follow the "Documentation" link from the Hob page, you
>>will
>> -        find a short introductory training video on Hob.
>> -        The following lists some features of Hob:
>> -        <itemizedlist>
>> -            <listitem><para>You can setup and run Hob using these
>>commands:
>> -            <literallayout class=3D'monospaced'>
>> -     $ source oe-init-build-env
>> -     $ hob
>> -            </literallayout></para></listitem>
>> -            <listitem><para>You can set the
>> -                <ulink
>>url=3D'&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ul=
in
>>k>
>> -                for which you are building the image.</para></listitem>
>> -            <listitem><para>You can modify various policy settings
>>such as the
>> -                package format with which to build,
>> -                the parallelism BitBake uses, whether or not to build
>>an
>> -                external toolchain, and which host to build against.
>> -                </para></listitem>
>> -            <listitem><para>You can manage
>> -                <link
>>linkend=3D'understanding-and-creating-layers'>layers</link>.</para></list=
it
>>em>
>> -            <listitem><para>You can select a base image and then add
>>extra packages for your custom build.
>> -                </para></listitem>
>> -            <listitem><para>You can launch and monitor the build from
>>within Hob.</para></listitem>
>> -        </itemizedlist>
>> -    </para>
>> -</section>
>> -
>>  <section id=3D"platdev-appdev-devshell">
>>      <title>Using a Development Shell</title>
>> =20
>> diff --git a/documentation/ref-manual/introduction.xml
>>b/documentation/ref-manual/introduction.xml
>> index 57e4a25..e82f834 100644
>> --- a/documentation/ref-manual/introduction.xml
>> +++ b/documentation/ref-manual/introduction.xml
>> @@ -192,10 +192,6 @@
>>              supported Linux distribution, instances might exist where
>>you
>>              encounter a problem while using the Yocto Project on a
>>specific
>>              distribution.
>> -            For example, the CentOS 6.4 distribution does not include
>>the
>> -            Gtk+ 2.20.0 and PyGtk 2.21.0 (or higher) packages, which
>>are
>> -            required to run
>> -            <ulink
>>url=3D'&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink>.
>>          </note>
>>      </section>
>> =20
>> diff --git a/documentation/ref-manual/migration.xml
>>b/documentation/ref-manual/migration.xml
>> index 7f1ef8c..670e1c1 100644
>> --- a/documentation/ref-manual/migration.xml
>> +++ b/documentation/ref-manual/migration.xml
>> @@ -125,7 +125,7 @@
>>                  reference hardware Board Support Packages (BSPs),
>>respectively:
>>                  <filename>meta-yocto</filename> and
>>                  <filename>meta-yocto-bsp</filename>.
>> -                When running BitBake or Hob for the first time after
>>upgrading,
>> +                When running BitBake for the first time after
>>upgrading,
>>                  your <filename>conf/bblayers.conf</filename> file will
>>be
>>                  updated to handle this change and you will be asked to
>>                  re-run or restart for the changes to take effect.
>> @@ -1446,18 +1446,6 @@
>>          </section>
>>      </section>
>> =20
>> -    <section id=3D'migration-1.6-directory-layout-changes'>
>> -        <title>Directory Layout Changes</title>
>> -
>> -        <para>
>> -            The <filename>meta-hob</filename> layer has been removed
>>from
>> -            the top-level of the
>> -            <ulink url=3D'&YOCTO_DOCS_DEV_URL;#source-directory'>Source
>>Directory</ulink>.
>> -            The contents of this layer are no longer needed by the Hob
>> -            user interface for building images and toolchains.
>> -        </para>
>> -    </section>
>> -
>>      <section id=3D'migration-1.6-package-test-ptest'>
>>          <title>Package Test (ptest)</title>
>> =20
>> diff --git a/documentation/ref-manual/ref-bitbake.xml
>>b/documentation/ref-manual/ref-bitbake.xml
>> index dc402db..90afe93 100644
>> --- a/documentation/ref-manual/ref-bitbake.xml
>> +++ b/documentation/ref-manual/ref-bitbake.xml
>> @@ -414,7 +414,7 @@ Options:
>>    -l DEBUG_DOMAINS, --log-domains=3DDEBUG_DOMAINS
>>                          Show debug logging for the specified logging
>>domains
>>    -P, --profile         Profile the command and save reports.
>> -  -u UI, --ui=3DUI        The user interface to use (e.g. knotty, hob,
>>depexp).
>> +  -u UI, --ui=3DUI        The user interface to use (e.g. knotty,
>>depexp).
>>    -t SERVERTYPE, --servertype=3DSERVERTYPE
>>                          Choose which server to use, process or xmlrpc.
>>    --revisions-changed   Set the exit code depending on whether upstream
>> diff --git a/documentation/ref-manual/ref-classes.xml
>>b/documentation/ref-manual/ref-classes.xml
>> index c4f15c9..bf4e5a9 100644
>> --- a/documentation/ref-manual/ref-classes.xml
>> +++ b/documentation/ref-manual/ref-classes.xml
>> @@ -2558,22 +2558,6 @@
>>      </para>
>>  </section>
>> =20
>> -<section id=3D'ref-classes-packageinfo'>
>> -    <title><filename>packageinfo.bbclass</filename></title>
>> -
>> -    <para>
>> -        The <filename>packageinfo</filename> class
>> -        gives a BitBake user interface the ability to retrieve
>>information
>> -        about output packages from the <filename>pkgdata</filename>
>>files.
>> -    </para>
>> -
>> -    <para>
>> -        This class is enabled automatically when using the
>> -        <ulink=20
>>url=3D'&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink>
>> -        user interface.
>> -    </para>
>> -</section>
>> -
>>  <section id=3D'ref-classes-patch'>
>>      <title><filename>patch.bbclass</filename></title>
>> =20
>> diff --git a/documentation/ref-manual/ref-structure.xml
>>b/documentation/ref-manual/ref-structure.xml
>> index 725435e..578b381 100644
>> --- a/documentation/ref-manual/ref-structure.xml
>> +++ b/documentation/ref-manual/ref-structure.xml
>> @@ -738,8 +738,7 @@
>>          <para>
>>              Be careful when deleting files in this directory.
>>              You can safely delete old images from this directory (e.g.
>> -            <filename>core-image-*</filename>,
>><filename>hob-image-*</filename>,
>> -            etc.).
>> +            <filename>core-image-*</filename>).
>>              However, the kernel (<filename>*zImage*</filename>,
>><filename>*uImage*</filename>, etc.),
>>              bootloader and other supplementary files might be deployed
>>here prior to building an
>>              image.
>> diff --git a/documentation/ref-manual/ref-variables.xml
>>b/documentation/ref-manual/ref-variables.xml
>> index 71f4ca6..fabce13 100644
>> --- a/documentation/ref-manual/ref-variables.xml
>> +++ b/documentation/ref-manual/ref-variables.xml
>> @@ -1134,20 +1134,7 @@
>>         /home/scottrif/poky/meta-yocto-bsp \
>>         /home/scottrif/poky/meta-mykernel \
>>         "
>> -
>> -     BBLAYERS_NON_REMOVABLE ?=3D " \
>> -       /home/scottrif/poky/meta \
>> -       /home/scottrif/poky/meta-yocto \
>> -       "
>>                      </literallayout>
>> -                    <note>
>> -                        The
>> -                        <link
>>linkend=3D'var-BBLAYERS_NON_REMOVABLE'><filename>BBLAYERS_NON_REMOVABLE</=
fi
>>lename></link>
>> -                        variable exists only for
>> -                        <ulink
>>url=3D'https://www.yoctoproject.org/tools-resources/projects/hob'>Hob</ul=
in
>>k>.
>> -                        The OpenEmbedded build system does not use this
>> -                        variable.
>> -                    </note>
>>                  </para>
>> =20
>>                  <para>
>> @@ -1157,47 +1144,6 @@
>>              </glossdef>
>>          </glossentry>
>> =20
>> -        <glossentry
>>id=3D'var-BBLAYERS_NON_REMOVABLE'><glossterm>BBLAYERS_NON_REMOVABLE</glos=
st
>>erm>
>> -            <info>
>> -                BBLAYERS_NON_REMOVABLE[doc] =3D "Lists core layers that
>>cannot be removed from the bblayers.conf file."
>> -            </info>
>> -            <glossdef>
>> -                <para role=3D"glossdeffirst">
>> -<!--                <para role=3D"glossdeffirst"><imagedata
>>fileref=3D"figures/define-generic.png" /> -->
>> -                    Lists core layers that cannot be removed from the
>> -                    <filename>bblayers.conf</filename> file during a
>>build
>> -                    using the
>> -                    <ulink
>>url=3D'https://www.yoctoproject.org/tools-resources/projects/hob'>Hob</ul=
in
>>k>.
>> -                    <note>
>> -                        When building an image outside of Hob, the
>>OpenEmbedded
>> -                        build system ignores this variable.
>> -                    </note>
>> -                </para>
>> -
>> -                <para>
>> -                    In order for BitBake to build your image using
>>Hob, your
>> -                    <filename>bblayers.conf</filename> file must
>>include the
>> -                    <filename>meta</filename> and
>><filename>meta-yocto</filename>
>> -                    core layers.
>> -                    Here is an example that shows these two layers
>>listed in
>> -                    the <filename>BBLAYERS_NON_REMOVABLE</filename>
>>statement:
>> -                    <literallayout class=3D'monospaced'>
>> -     BBLAYERS =3D " \
>> -       /home/scottrif/poky/meta \
>> -       /home/scottrif/poky/meta-yocto \
>> -       /home/scottrif/poky/meta-yocto-bsp \
>> -       /home/scottrif/poky/meta-mykernel \
>> -       "
>> -
>> -     BBLAYERS_NON_REMOVABLE ?=3D " \
>> -       /home/scottrif/poky/meta \
>> -       /home/scottrif/poky/meta-yocto \
>> -       "
>> -                    </literallayout>
>> -                </para>
>> -            </glossdef>
>> -        </glossentry>
>> -
>>          <glossentry id=3D'var-BBMASK'><glossterm>BBMASK</glossterm>
>>              <info>
>>                  BBMASK[doc] =3D "Prevents BitBake from processing
>>specific recipes or recipe append files."
>> diff --git a/documentation/toaster-manual/toaster-manual-intro.xml
>>b/documentation/toaster-manual/toaster-manual-intro.xml
>> index 278c33f..ee1dcba 100644
>> --- a/documentation/toaster-manual/toaster-manual-intro.xml
>> +++ b/documentation/toaster-manual/toaster-manual-intro.xml
>> @@ -14,25 +14,6 @@
>>          remote build servers.
>>      </para>
>> =20
>> -    <note>
>> -        <para>
>> -            This release of Toaster does allow you to configure and
>>initiate
>> -            builds.
>> -            However, you cannot use Toaster to customize image
>>recipes, which
>> -            still must either be done by hand or through
>> -            <ulink
>>url=3D'&YOCTO_HOME_URL;/tools-resources/projects/hob'>Hob</ulink>.
>> -            As Toaster matures, it eventually will equal and surpass
>>Hob
>> -            functionality, at which time Hob will be deprecated.
>> -        </para>
>> -
>> -        <para>
>> -            For more information on Hob,
>> -            see the
>> -            "<ulink
>>url=3D'&YOCTO_DOCS_DEV_URL;#image-development-using-hob'>Image Developmen=
t
>>Using Hob</ulink>"
>> -           section in the Yocto Project Development Manual.
>> -        </para>
>> -    </note>
>> -
>>      <section id=3D'intro-features'>
>>          <title>Toaster Features</title>
>> =20
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


