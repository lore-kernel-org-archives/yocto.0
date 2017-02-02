Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 455E5E009A0; Thu,  2 Feb 2017 13:02:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
	[217.26.49.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35705E00826
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 13:02:49 -0800 (PST)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtp (Exim 4.88 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1cZOWl-0008ho-LN; Thu, 02 Feb 2017 22:02:47 +0100
Received: from [2a02:aa12:a200:800:250f:2b0d:d46e:a56b]
	by asmtp012.mail.hostpoint.ch with esmtpa (Exim 4.88 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1cZOWl-0006Qp-JJ; Thu, 02 Feb 2017 22:02:47 +0100
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4bf25102-0b23-f4dd-7688-bebf892946ab@smart-home-technology.ch>
	<a68bf963-cd32-38b1-dbc6-557437b08113@smart-home-technology.ch>
	<2116568.gZo4XLsKAG@peggleto-mobl.ger.corp.intel.com>
	<1676063.Csm5fO6USZ@peggleto-mobl.ger.corp.intel.com>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <9a3a4055-61e3-6873-6911-4cf33d48138a@smart-home-technology.ch>
Date: Thu, 2 Feb 2017 22:02:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1676063.Csm5fO6USZ@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Empty "normal" package, filled dev and dbg packages, tr-50 lib
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
X-List-Received-Date: Thu, 02 Feb 2017 21:02:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hello Paul,

with your modification and changing to autotools-brokensep (which the 
generated recipe proposed),it finally works!
Thank you very much!

All the Best,
Jakob

On 01.02.2017 02:50, Paul Eggleton wrote:
> On Wednesday, 1 February 2017 10:04:50 AM NZDT Paul Eggleton wrote:
>> What you really need to do is look in the install destination directory -
>> i.e. the "image" subdirectory under the work directory - you can find the
>> latter pretty easily if you're unsure:
>>
>> bitbake -e tr-50 | grep ^WORKDIR=
>>
>> Where are files being installed under there? Are there any files there at
>> all? Once we see what's there we can figure out what the fix will be.
> Actually I just tried this here and it seems like libtr50 is not set up to
> write out standard versioned libraries - the authors have chosen their own
> scheme. To work around this you can add the following to the recipe:
>
> FILES_SOLIBSDEV = "${libdir}/libtr50.so"
> FILES_${PN} += "${libdir}/libtr50-*.so"
>
> BTW, missing from your original email were the warnings / errors that you
> surely should have seen printed (assuming you haven't disabled them). For
> future reference those would have been useful to have.
>
> Cheers,
> Paul
>

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


