Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9207E0027D
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 08:55:25 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from [192.168.101.53] (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id 4E992109893E;
	Mon, 23 Jul 2012 17:55:22 +0200 (CEST)
Message-ID: <500D73E4.1050409@timomueller.eu>
Date: Mon, 23 Jul 2012 17:55:16 +0200
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C46AB9B61@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46AB9B61@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC 0/8] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Mon, 23 Jul 2012 15:55:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jessica,

Zhang, Jessica wrote, On 22.07.2012 20:26:
> Hi Timo,
>
> Overall, I think this is very nice enhancement to Yocto Eclipse
> plug-in and thanks for the RFC. Couple comments/questions:
 >
 > 1st.  I'd
> think if we add this feature, it'll probably make sense for the
> upcoming 1.3 release in the Oct. timeframe.  We just ported our
> plug-in to Eclipse Juno release.  Can you verify it works for Juno?

I've tested the patches with the current Juno release (origin/master, 
commit: 4989ec8ba8760bf12def6990e91f3d8881af6e25). The plugin works fine 
within eclipse Juno as well.

>
> 2nd. We need to figure out the process to generate the content for
> this doc plug-in since normally the content will be finalized toward
> the end of a release.  So is there an automated way to generate the
> content that ScottR (our tech writer) can use to generate the content
> once he's done his writing.  Or he needs to inform you to create it
> and send the pull request?

I simply converted the docbook documents to eclipse help using the 
eclipse stylesheet provided by docbook itself. I could either provide 
the exact xslt call or generate the documentation as you proposed.

To do this in an automated way the calls could be added directly to the 
documentation build system, so the eclipse help can be generated along 
with the rest of the documentation output.

As the CCA-SA hasn't been approved here at my company I'm struggeling to 
propose patches to the doc build system and integrate the eclipse help 
generation.
I would be happy to contribute under the BSD license, if the "Code 
Submissions" clause (which would be BSD license, 
http://www.yoctoproject.org/about/terms-service) applies to the build 
system. I've already asked about this on the mailing list. I messed up 
with the subject ([yocto] Documentation question: How are the), but 
until now nobody knew if the "Code Submissions" clause really applies here.

>
> 3rd. We have autobuilder that use our eclipse plug-in headless build
> to build the plugin and put on the download site for
> update/installating.  So have you verified the doc plug-in works with
> our existing headless build?

Yes, I have used the build.sh in the scripts folder to build the archive 
and the update site and it built without errors (and can also be 
installed from the generated update site).
By the way is there any way to specify that the script shall use a local 
clone of the repository? I've been changing the GIT_URL in the script to 
actually achieve this.

>
> 4th.  I need to double check with our License expert regarding CCA-SA
> and EPL and your proposed approach and will work with you pending his
> comments.

OK. Feedback is very welcome.

>
>
> Thanks, Jessica
>
> -----Original Message----- From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of
> mail@timomueller.eu Sent: Wednesday, July 18, 2012 6:03 AM To:
> yocto@yoctoproject.org Cc: Timo Mueller Subject: [yocto] [RFC 0/8]
> Integrate yocto documentation into eclipse
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> the documentation of the yocto project can currently be viewed online
> or as a separate pdf. When using the eclipse ide to develop software
> on base of a yocto sysroot and toolchain it would be convenient to
> access the relevant parts of the documentation from within the ide.
>
> In order to achieve this, I've generated eclipse help from yocto's
> documentation (adt-manual, yocto-project-qs). I have intergrated this
> documentation in the ide and it can now be accessed through the
> eclipse help center (Help -> Help Contents). Please let me know what
> you think about it?
>
> Yocto's documentation is licensed under the Creative Commons
> Attribution-Share Alike 2.0 UK: England & Wales (CCA-SA), which is
> incompatible to the Eclipse Public License 1.0. Thus I've created a
> standalone feature to simply redistribute the documentation avoiding
> licensing issues. Do you agree on the way this is structured?
>
> Cheers, Timo
>

<snip>

Thank you for the feedback,
Timo




