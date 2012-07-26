Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FB83E01304
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 23:21:58 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from [192.168.101.53] (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id 8C8A61D560DB;
	Thu, 26 Jul 2012 08:21:55 +0200 (CEST)
Message-ID: <5010E203.5050205@timomueller.eu>
Date: Thu, 26 Jul 2012 08:21:55 +0200
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C46AB9B61@ORSMSX101.amr.corp.intel.com>
	<500D73E4.1050409@timomueller.eu>
	<C6510F6D410BB64A8C15398EDC6B847C46ABA1B7@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46ABA1B7@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Thu, 26 Jul 2012 06:21:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jessica,


Zhang, Jessica wrote, On 24.07.2012 01:48:
> Please see my comments...
>
> Thanks,
> Jessica
>
> -----Original Message-----
>
>>
>> 2nd. We need to figure out the process to generate the content for
>> this doc plug-in since normally the content will be finalized toward
>> the end of a release.  So is there an automated way to generate the
>> content that ScottR (our tech writer) can use to generate the content
>> once he's done his writing.  Or he needs to inform you to create it
>> and send the pull request?
>
> I simply converted the docbook documents to eclipse help using the
> eclipse stylesheet provided by docbook itself. I could either provide
> the exact xslt call or generate the documentation as you proposed.
>
> To do this in an automated way the calls could be added directly to the
> documentation build system, so the eclipse help can be generated along
> with the rest of the documentation output.
>
> As the CCA-SA hasn't been approved here at my company I'm struggeling to
> propose patches to the doc build system and integrate the eclipse help
> generation.
> I would be happy to contribute under the BSD license, if the "Code
> Submissions" clause (which would be BSD license,
> http://www.yoctoproject.org/about/terms-service) applies to the build
> system. I've already asked about this on the mailing list. I messed up
> with the subject ([yocto] Documentation question: How are the), but
> until now nobody knew if the "Code Submissions" clause really applies here.
>
> [JZ] I've checked with our release engineer and she pointed that according to LICENSE file under poky directory, all the file without explicitly stated will be defaulted to GPLv2.  Since our doc build makefile fall into this case, your patch needs to be GPLv2.

That's great news. Thank you for the clarification. I'm already working 
on the patches that include the eclipse help generation.

>
>>
>> 3rd. We have autobuilder that use our eclipse plug-in headless build
>> to build the plugin and put on the download site for
>> update/installating.  So have you verified the doc plug-in works with
>> our existing headless build?
>
> Yes, I have used the build.sh in the scripts folder to build the archive
> and the update site and it built without errors (and can also be
> installed from the generated update site).
> By the way is there any way to specify that the script shall use a local
> clone of the repository? I've been changing the GIT_URL in the script to
> actually achieve this.
>
> [JZ] I'm afraid not atm but patches are always welcome :-)
>
>


Best regards,
Timo

