Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE5B1E006E5; Mon, 13 Apr 2015 08:28:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07DB7E003A8
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 08:28:50 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id C66FF600A983;
	Mon, 13 Apr 2015 18:28:48 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1428938928; bh=MkNxED5WkpJxcS9QgnQL+yq/+vECC58ovputDcz+pHw=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=APConQuJT/+a0HeNDXAPsr7khKMzzjkz8Xi4Lg1ev409tceb0G+w12k4YlWoToUJX
	5IBZa6bavl5H1yUNJs2qxwgg4XGuQevpOx9VMfl0ypqYOgfQzq4L/65Qj+XUpHUYJ8
	lxqk8fxuj2AVFKDHreeBC44ZibqcN4ZEVF923R0g=
Message-ID: <552BE0B0.5070200@mail.bg>
Date: Mon, 13 Apr 2015 18:28:48 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.6.0
MIME-Version: 1.0
To: "Francois P. Gallichand" <francois.p.gallichand@ca.abb.com>
References: <AM3PR06MB4510B6E81D1E70198602BC68AE70@AM3PR06MB451.eurprd06.prod.outlook.com>
	<16058327.QEQjjjhQFS@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <16058327.QEQjjjhQFS@peggleto-mobl.ger.corp.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Git and http problem.
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
X-List-Received-Date: Mon, 13 Apr 2015 15:28:52 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Francois,

On 04/13/2015 03:43 PM, Paul Eggleton wrote:
> Hi Francois,
>
> On Monday 13 April 2015 11:53:25 Francois P. Gallichand wrote:
>> I'm working behind a firewall, on which I have absolutely no
>> control, and it does not allows the git protocol to go through. So
>> I patch the recipes to replace the git protocol by the http
>> protocol and it works most of the time. However one specific
>> package, linux-yocto, does not seem to work even If I use the http
>> protocol. It either times-out during the fetch, of the fetch goes
>> on forever.
>
> Assuming there's no infrastructure issue on our end, it sounds a bit
> like your firewall might be proxying the http fetch completely, and
> the fetch takes longer than the configured timeout.
>
> You could set up a local mirror to work around this and set up the
> system to point to it using PREMIRRORS. Note that you can also use
> PREMIRRORS to effectively add ;protocol=http to git URIs as well,
> you shouldn't need to patch each recipe.
>
>> Frustrated with that situation, I tried various things to realize
>> that if I tried to manually clone the git repository, it doesn't
>> work with a "git clone git://...;protocol=http;..." but if I use
>> "git clone http://...;protocol=http; ...",it is working fine. But
>> the  http:// form is not supported by bitbake as if I use it in a
>> recipe as the SRC_URI, bitbake gives me an error.
>>
>> Is it a bug with bitbake or am I doing something wrong?
>
> It's not a bug - git and bitbake's fetcher expect different URI
> formats - bitbake has support for multiple fetch types and therefore
> needs a hint to tell it which fetcher module should handle the URI
> and that's the prefix, so anything that should be fetched by the git
> fetcher module needs to be prefixed with git:// even if the actual
> protocol ends up being http (in which case it would be
> git://...;protocol=http). If you are then going back to git on the
> command line you'd need to translate that back into http://.. form
> (note that protocol= is something our git fetcher understands; git
> itself does not so you would not specify that on the git command
> line).

The reason for this behavior is that the git and http contents are
served via different servers - git vs apache+cgit. So the URLs are not
always 1:1 as in this specific case, and you need to change more then
the URL scheme:

git://git.yoctoproject.org/linux-yocto-3.14
http://git.yoctoproject.org/git/linux-yocto-3.14

Please note the additional "git/" in the 2nd URL.

Regards,
Nikolay

