Return-Path: <stefan@herbrechtsmeier.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1826AE00D75; Tue,  8 Oct 2019 13:04:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.13.157.12 listed in list.dnswl.org]
Received: from dd41138.kasserver.com (dd41138.kasserver.com [85.13.157.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45E11E00942
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2019 13:04:19 -0700 (PDT)
Received: from [192.168.178.37] (i59F77E31.versanet.de [89.247.126.49])
	by dd41138.kasserver.com (Postfix) with ESMTPSA id DF87611A0072;
	Tue,  8 Oct 2019 22:04:17 +0200 (CEST)
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
References: <1078346093.8578188.1570117048745.JavaMail.zimbra@savoirfairelinux.com>
	<51c5973e-2c1a-f212-f963-9a2b321f480d@herbrechtsmeier.net>
	<967547077.8619660.1570192633081.JavaMail.zimbra@savoirfairelinux.com>
	<3faffc0c-a573-0b8b-5915-2619262e7b6e@herbrechtsmeier.net>
	<302244287.8695117.1570450585150.JavaMail.zimbra@savoirfairelinux.com>
	<0c098656-2c99-c6b5-42b1-b0fbd6df5bf3@herbrechtsmeier.net>
	<20191008051231.23lrbfs2r4h4hocj@jholzmayr.localdomain>
From: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Message-ID: <b0df2d56-0db3-df70-d77b-0a60af29c558@herbrechtsmeier.net>
Date: Tue, 8 Oct 2019 22:04:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008051231.23lrbfs2r4h4hocj@jholzmayr.localdomain>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Savoir-faire Linux Rennes <rennes@savoirfairelinux.com>
Subject: Re: [npm] duplicate code
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
X-List-Received-Date: Tue, 08 Oct 2019 20:04:29 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Josef,

Am 08.10.19 um 07:12 schrieb Josef Holzmayr:
> On Mon, Oct 07, 2019 at 09:33:46PM +0200, Stefan Herbrechtsmeier wrote:
>> Hi Jean-Marie,
>>
>> Am 07.10.19 um 14:16 schrieb Jean-marie Lemetayer:
>>>> I thought about your idea of using Yocto to manage NPM package dependencies and I ran into an issue. NPM projects can have multiple dependencies on a single package, and sometimes with multiple versions. NPM will manage this by creating sub 'node_modules' tree.
>>>
>>> Here is an example with a newly created angular application. The app depends on 3 different version of 'ansi-regex'. NPM will install the packages this way:
>>> node_modules/ansi-regex @ 2.1.1
>>> node_modules/cliui/node_modules/ansi-regex @ 3.0.0
>>> node_modules/inquirer/node_modules/ansi-regex @ 4.1.0
>>> node_modules/string-width/node_modules/ansi-regex @ 3.0.0
>>> node_modules/@angular/compiler-cli/node_modules/ansi-regex @ 4.1.0
>>
>> I use symbolic links instead of folders, append the major version to the
>> folder name and move the folders into the main node_modules folder. At the
>> moment I use one version per major version or first version unequal to zero:
>>
>> node_modules/ansi-regex-2
>> node_modules/ansi-regex-3
>> node_modules/ansi-regex-4
>> node_modules/cliui-X/node_modules/ansi-regex -> ../../ansi-regex-3
>> node_modules/inquirer-X/node_modules/ansi-regex -> ../../ansi-regex-3
>> node_modules/string-width-X/node_modules/ansi-regex  -> ../../ansi-regex-3
>> node_modules/@angular/compiler-cli-X/node_modules/ansi-regex  ->
>> ../../../ansi-regex-4
>> node_modules/abc-X/node_modules/ansi-regex -> ../../ansi-regex-2
>> node_modules/abc-X/node_modules/cliui -> ../../cliui-X
>> node_modules/abc-X/node_modules/inquirer -> ../../inquirer-X
>> node_modules/abc-X/node_modules/string-width -> ../../string-width
>> node_modules/abc-X/node_modules/@angular/compiler-cli ->
>> ../../../@angular/compiler-cli-X
>>
>>
>>> How can you handle that with Yocto ? I am not sure but I think it is not possible.
>> It is possible and Yocto could do even more. If you take a look at the
>> package ansi-regex you realize that the project increase the major version
>> only because they change the minimum required nodejs version. This means you
>> could replace all ansi-regex version by the last version, add some symbolic
>> links to the ansi-regex package and provide all versions by the same
>> package.
> 
> I think it would be dangerous to assume this holds true for other
> packages too.

I don't assume this. It is a manual optimization of individual recipes. 
The OE package name (PN) for a NPM package consists of the NPM package 
name and the major version. An individual recipe could contain multiple 
RPROVIDES for different major version if the API is compatible.

In the semantic versioning world as npm packages expectexd
> to behave - and nodejs itself certainly does! - a change in the major
> version means a breaking change of some kind.

And one of this breaking change is the update of the minimal Node.js 
version.

Regards
   Stefan

