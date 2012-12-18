Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB778E00294
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 00:33:51 -0800 (PST)
Received: from [192.168.101.86] (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@timomueller.eu)
	by h1954115.stratoserver.net (mailserver) with ESMTPSA id 4388E6E94001; 
	Tue, 18 Dec 2012 09:33:48 +0100 (CET)
Message-ID: <50D02A6B.2000605@timomueller.eu>
Date: Tue, 18 Dec 2012 09:33:47 +0100
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
	<50C88216.3010803@timomueller.eu>
	<C6510F6D410BB64A8C15398EDC6B847C46B6C126@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46B6C126@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFCv3 0/7][eclipse-poky] Integrate yocto documentation into eclipse
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 18 Dec 2012 08:33:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Hi Jessica,

Zhang, Jessica wrote, On 15.12.2012 00:37:
> Hi Timo,
>
> Sorry for the delay, but finally got a chance to look into these
> patches. I like how it automate the docgen and integrate them into
> eclipse. The concern that I'm having is, it seems converting all the
> Yocto Project Docs, originally I thought only for ADT manual.

The first version of this RFC was meant to be a proof of concept,
that's why I only included the ADT manual.
One of the reasons why I integrated all manuals are the links between
the different documents. The links pointing to documentation at
yoctoprojects.org are rewritten to point to the documentation inside
eclipse (I'm using the same mechanism as the mega-manual). So there's
no need for internet connectivity and the user doesn't have to leave
eclipse.

> So to view
> these doc in eclipse are nice, but since we don't have some
> corresponding feature support in eclipse plug-in, it'll look awkward to
> combine these docs with ADT plugin.

I guess for some manuals it makes more sense to have them inside of
eclipse than for others. But I personally like that everything is in
one place, either just on the website, in the PDFs or in eclipse.

> BTW, to support our bitbake
> commander plug-in running on windows usage, we recently split the
> plug-in into 2 features: ADT and bitbake commander and the doc plug-in
> is part of ADT feature. So I'd suggest, if we want to show all the docs,
> probably create a separate Yocto Doc Feature. If we want to combine with
> ADT plug-in, then probably only covert the ADT manual content generation
> and integration. Make sense?

Yes. Creating a separate feature seems like a good idea. I will rewrite 
the patch series accordingly.

>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Müller
> Sent: Wednesday, December 12, 2012 5:10 AM
> To: yocto@yoctoproject.org
> Cc: Timo Mueller
> Subject: Re: [yocto] [RFCv3 0/7][eclipse-poky] Integrate yocto documentation into eclipse
>
> Hi,
>
> mail@timomueller.eu wrote, On 06.12.2012 16:48:
>> From: Timo Mueller <timo.mueller@bmw-carit.de>
>>
>> Hi,
>>
>> since the last proposal some things have changed:
>> 1. Eclipse help generation is now part of the yocto-docs project
>> (currently available in the origin/timo branch) 2. We agreed that the
>> plugin should be licensed under the EPL v1.0 instead of having a
>> separate documentation plugin licensed under the CCA-SA 2.0 UK.
>>
>> The last patch set was adding generated eclipse help files (html) to
>> the repository. One major change in this patch series is that I
>> extended the plugin build system to integrate the generation into the
>> build process. Thus keeping the eclipse help and the official
>> documentation in sync is now automated.
>> Also the eclipse help is now part of the user.doc plugin and no longer
>> contained in a separate plugin/feature.
>>
>> Rational from the original patch:
>> <snip>
>> the documentation of the yocto project can currently be viewed online
>> or as a separate pdf. When using the eclipse ide to develop software
>> on base of a yocto sysroot and toolchain it would be convenient to
>> access the relevant parts of the documentation from within the ide.
>> </snip>
>> <snip>
>> I have intergrated this
>> documentation in the ide and it can now be accessed through the
>> eclipse help center (Help -> Help Contents).
>> </snip>
>>
>> Best regards
>> Timo
>>
>> Timo Mueller (7):
>>     plugins/sdk.ide.doc.user: Add empty eclipse help
>>     plugins/sdk.ide.doc.user: Add about.html to prepare addition of yocto
>>       documentation
>>     scripts/generate_doc.sh: Add script to handle eclipse help generation
>>     plugins/sdk.ide.doc.user: Add yocto documentation to the table of
>>       contents
>>     scripts/generat-doc.sh: Copy generated eclipse help into the user.doc
>>       plugin
>>     scripts/build.sh: Add documentation generation to the default build
>>     (TEMPORARY): Use origin/timo branch of yocto docs project
>>
>>    .../META-INF/MANIFEST.MF                           |    3 +-
>>    plugins/org.yocto.sdk.ide.doc.user/about.html.in   |  166 ++++++++++++++++++++
>>    .../org.yocto.sdk.ide.doc.user/build.properties    |    9 +-
>>    plugins/org.yocto.sdk.ide.doc.user/html/book.css   |    1 +
>>    plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |   31 ++++
>>    plugins/org.yocto.sdk.ide.doc.user/toc.xml         |   21 +++
>>    scripts/build.sh                                   |    7 +
>>    scripts/generate_doc.sh                            |   91 +++++++++++
>>    8 files changed, 326 insertions(+), 3 deletions(-)
>>    create mode 100644 plugins/org.yocto.sdk.ide.doc.user/about.html.in
>>    create mode 100644 plugins/org.yocto.sdk.ide.doc.user/html/book.css
>>    create mode 100644 plugins/org.yocto.sdk.ide.doc.user/toc.xml
>>    create mode 100755 scripts/generate_doc.sh
>>
>
> The name of the poky-ref-manual will be changed to ref-manual. This
> change has an impact on this patch series, since the name is used in the
> generate-doc shell script.
> But with the temporary fix in patch 7, the timo branch is used, which
> will for the time being remain unaffected by the name changes. This
> way you can test the documentation integration proposed in this patch
> set.I would like to get your opinion on the general approach to
> integrate the documentation into eclipse. If it fits into the
> eclipse-poky project in general, I will rewrite this patch series to
> reflect the changes. The rewrite will also remove the "the" from the
> different help chapters (as  Scott pointed out to me).
> I also agreed with Scott that once this approach is agreed on I will
> provide the necessary patches to the timo branch of the yocto-docs
> project and he will merge the eclipse generation into the master of the
> project.
>
> Best regards,
> Timo
>
> PS: I also apologize for not signing off the patch series. I will
> make  up for that in the reworked patches.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Best regards,
Timo



