Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9121E009A5; Sun,  4 Jun 2017 14:20:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30B06E00852
	for <yocto@yoctoproject.org>; Sun,  4 Jun 2017 14:20:13 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 25ABE27F1D3
	for <yocto@yoctoproject.org>; Sun,  4 Jun 2017 21:20:10 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id Qo57WOG77N4x for <yocto@yoctoproject.org>;
	Sun,  4 Jun 2017 21:17:32 +0000 (UTC)
Received: from [192.168.0.10]
	(cpc111193-live30-2-0-cust656.17-2.cable.virginm.net [92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 6C00827F1CC
	for <yocto@yoctoproject.org>; Sun,  4 Jun 2017 21:17:31 +0000 (UTC)
To: yocto@yoctoproject.org
References: <56726a48-bb3f-75d1-6a72-64b45eb4d553@dynamicdevices.co.uk>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <d1aabd4f-665d-9739-a1e7-597f759ff2b1@dynamicdevices.co.uk>
Date: Sun, 4 Jun 2017 22:17:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <56726a48-bb3f-75d1-6a72-64b45eb4d553@dynamicdevices.co.uk>
Subject: Re: Transaction check error building core-image-mono with pyro
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
X-List-Received-Date: Sun, 04 Jun 2017 21:20:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-GB

On 01/06/2017 15:57, Alex J Lennon wrote:
> Hi,
>
> I'm updating the meta-mono layer with support to build the test
> core-image-mono image under pyro (fine with morty).
>
> It's getting to the point where it starts to create the root
> file-system image then fails with a transaction check error:
>
> ...
>
> Running transaction check
> Transaction check succeeded.
> Running transaction test
> Error: Transaction check error:
>   file /usr/lib/mono conflicts between attempted installs of
> gtk-sharp-2.12.21-r0.i586 and mono-libs-4.5-5.0.1.1-r0.i586
>   file /usr/lib/mono/gac conflicts between attempted installs of
> gtk-sharp-2.12.21-r0.i586 and mono-gac-5.0.1.1-r0.i586
>
> Error Summary
> -------------
> ...
>
>
> This seems to be suggesting that /usr/lib/mono and /usr/lib/mono/gac
> are files, although they are directories.
>
> I had a look in the logs and the RPMs for gtk-sharp-...
> mono-libs-4.5-... and mono-gac-... but I can't see any obvious file
> conflicts.
>
> Can anybody enlighten me as to what I'm missing?

I made a certain amount of progress with this. I reached out to Zoltan
Boszormenyi who found a workaround. I'm posting snippets of our email
thread here as use of DIRFILES wasn't obvious to me and it perhaps may
help others encountering this type of thing.

...

 "Haven't Pyro replaced the RPM 5.x version with the more Fedora /  Red
Hat / SuSE compatible 4.1x?

I vaguely remember that ownership of identical directories are not 
allowed in two different RPM packages, it would be a problem on  Fedora,
too.

RPM specfiles in Fedora can list empty directories with the %{dir} 
directive (this is what different *filesystem* packages are for in 
Fedora and RHEL/CentOS) but as far as I can see the Bitbake FILES_* 
directives don't make a difference between file patterns and directories.

In Yocto, I only have experience with packaging IPKs. They list all  the
parent directories of a file, too. E.g. for something like this:

FILES_${PN} += "${libdir}/package/somefile.bin"

the resulting IPK will contains these:

./usr
./usr/lib
./usr/lib/package
./usr/lib/package/somefile.bin

When you specify file patterns in an RPM specfile, the resulting RPM
will  only contain the last one, i.e. the file with the full path. Only
this  file will be owned by the RPM. Installing relies on the fact that
the  whole path will be created anyway.

The installation conflict may come from RPM being stricter about
directory  ownership and two packages can only list the same directories
if both  the permissions and the creation date are the same. The latter
would be  identical for two sub-packages of the same recipe but
different for  different packages.

The problem seems to be inherent to how Bitbake creates the list of
packaged files. "

...

"The question is: how can we convince Bitbake to avoid adding
parent directories explicitly into the packages?

I think this is what you need to be aware of (it took me about an hour
to find it):

https://github.com/openembedded/openembedded-core/commit/0e33d232916125ba5305ced7200cc00f8b5f7b22


Presumably, setting DIRFILES="" for gtk-sharp would fix the conflict. "

...

Setting DIRFILES does fix the core-image-mono build for me but I suspect
there's a deeper underlying problem as otherwise many recipes would
surely require this (e.g. just to make use of /etc)

Alex

