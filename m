Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0610FE009C3; Fri, 17 Jul 2015 07:37:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09378E009C3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 07:36:48 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 35B9C27E2D1;
	Fri, 17 Jul 2015 14:36:47 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id tmGRDKwT9uST; Fri, 17 Jul 2015 14:36:46 +0000 (UTC)
Received: from [192.168.0.12] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 1A6F327E289;
	Fri, 17 Jul 2015 14:36:46 +0000 (UTC)
Message-ID: <55A912F7.7090501@dynamicdevices.co.uk>
Date: Fri, 17 Jul 2015 15:36:39 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Tollerton <rich.tollerton@ni.com>, yocto@yoctoproject.org
References: <cover.1437083171.git.rich.tollerton@ni.com>
	<55A8C8B9.8020700@dynamicdevices.co.uk>
In-Reply-To: <55A8C8B9.8020700@dynamicdevices.co.uk>
Subject: Re: [meta-mono] [PATCH 00/11] Refactor common mono build bits into mono.bbclass
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
X-List-Received-Date: Fri, 17 Jul 2015 14:37:00 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 17/07/2015 10:19, Alex J Lennon wrote:
>
> On 17/07/2015 00:16, Richard Tollerton wrote:
>> Building CLI packages involves lots of boilerplate recipe settings, particularly
>> involving FILES and DEPENDS. This is a first attempt at refactoring these
>> settings into a single bbclass that can be inherited by all CLI packages that do
>> not require unusual build settings.
>>
>> I attempted to refactor every recipe in the layer with these exceptions:
>>
>> - cefglue, because it doesn't actually install anything (!)
>> - monotools-server, because I haven't been able to build it successfully
>> - mono-upnp and taglib-sharp because I don't use them
>>
>>
>> The following changes since commit 136ed556de19bd497279d6c3ae8704551fb1ec4d:
>>
>>   mono-xsp-3.x.inc: use autogen.sh (2015-07-16 18:56:23 +0100)
>>
>> are available in the git repository at:
>>
>>   git://github.com/rtollert/meta-mono dev/rtollert/v4/bbclass
>>   https://github.com/rtollert/meta-mono/tree/dev/rtollert/v4/bbclass
>>
>> Richard Tollerton (11):
>>   mono.bbclass: add
>>   dbus-sharp-glib: use mono.bbclass
>>   dbus-sharp: use mono.bbclass
>>   fsharp.inc: use mono.bbclass
>>   mono-addins: use mono.bbclass
>>   mono-helloworld: use mono.bbclass
>>   mono-xsp: use mono.bbclass
>>   mono-basic-4.xx.inc: use mono.bbclass
>>   gtk-sharp.inc: use mono.bbclass and make some FILES fixes
>>   gtk-sharp-native: remove mono-native dependency
>>   gtk-sharp: remove mono-native dependency
>>
>>  classes/mono.bbclass                               | 32 ++++++++++++++++++++++
>>  recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc   | 13 ++-------
>>  recipes-mono/dbus-sharp/dbus-sharp.inc             | 13 +--------
>>  recipes-mono/fsharp/fsharp.inc                     | 19 +------------
>>  recipes-mono/gtk-sharp/gtk-sharp-native_2.12.21.bb |  2 +-
>>  recipes-mono/gtk-sharp/gtk-sharp.inc               | 23 +++-------------
>>  recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb        |  2 +-
>>  recipes-mono/mono-addins/mono-addins.inc           | 14 ++--------
>>  recipes-mono/mono-basic/mono-basic-4.xx.inc        | 13 +--------
>>  recipes-mono/mono-helloworld/mono-helloworld.inc   |  4 +--
>>  recipes-mono/mono-xsp/mono-xsp-3.x.inc             |  3 +-
>>  11 files changed, 47 insertions(+), 91 deletions(-)
>>  create mode 100644 classes/mono.bbclass
>>
> Great idea - applied thanks Richard
>

Richard,

I'm having some trouble with builds here since that latest patch.

Can you tell me, what version of Mono did you test against, and also did
you have Mono installed out of tree on the host system?
(I've had trouble in the past with the host mono being picked up
incorrectly)

Thanks,

Alex

