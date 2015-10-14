Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AD7BE00B56; Wed, 14 Oct 2015 11:27:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.227.126.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F27AE00B2E
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 11:27:05 -0700 (PDT)
Received: from [192.168.159.8] ([80.43.50.149]) by mrelayeu.kundenserver.de
	(mreue003) with ESMTPSA (Nemesis) id 0MSmoL-1aC6Tv2aBx-00RoNj;
	Wed, 14 Oct 2015 20:26:58 +0200
References: <561E588D.5060609@2net.co.uk> <561E8278.7080702@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <561E9E71.3020105@2net.co.uk>
Date: Wed, 14 Oct 2015 19:26:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <561E8278.7080702@windriver.com>
X-Provags-ID: V03:K0:/osfYoOJVwtCLSLcvj6msr8MBevLM9VyrKWGxNFXU/2yJhf3Qel
	a4CIdh/qlL7crMPqZxFnS0s4EYsKEjhTTOrUdSq6QThEQjR/ku98GYyH7JWwy2DiPdXY6YT
	dU84LtNsjKPM6pMpUZXt8sRCBngXh0hLGOEIBN+J33iSg5kjhmVw9WCE/bko6i10EP8nlmP
	dj5IUbyPzk7lK8o+UopMw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:8bJcrh2GRPA=:r4jo7cDC/67zr+j0P24bHa
	ogkYioo0kEC4GLDHlrYxoRM0aDEtHrulw53AqiDxslv/jrE6ALOnMw/dSE4R137wbUMkrcQTh
	7Un9L/+60OaVRUA8WPYgB92qanoonl86jfED8DeIvYF71lYmQMAT/uCaTb+PVQewQSF8+uT4f
	Rgf9QWtYbaBzlvzt8kbYQDJjycbrcm4ovrPTDpDZoG8iaqBkM+ShlHfZixKdHkpRX1/59GNor
	Yrk8lfZ8w+qi21SKGuyAFpW4U6r7ZsNjnPiN3vh96+tP55E0/ZwLcRkbg7SATqa9rYLEXQxOd
	UNOyaOXUHmJ7ze56zeoZCHRh/vhcNEjhJK2dBbtMKWzvXiuu0qr0ucikyu7nKa5vAxO+R+Dw5
	RaaXG4N1NjSxuvO9acgCMRN7MOSFc85mzA8MihF5wsHrZnSs2e0v5hkh6+Nolj0Fqkh5AmCUc
	pLkhQmg9EAtpnwMHZlMBdbwAQU9RBmsF1G8fmZoVOP4VDl85fv4t9ZkR8REIuYF25LFKI/44W
	ZQxYZd9lZWKuYuViU2kfPM5IhlyhOHso40YLylHi9hwKWLZVCTXgcL16GHmAhsBEiWgoO6stw
	jHB9KK20zSrbHKbComZ68aPF4Nxr8q0AOmC0L5fdhsjDUFhm9PgOjnMnSzXMLyF+DFG+/PGpm
	T3+rM7AlIwtG0uiDSkKEQVY/nXm4lFY1RHcSkHYBs4zRgaFgQde0zabBYjQ2NJ7Iuey7W1XUa
	wZYssI+pCPvzvtAV
Subject: Re: RFC: Yocto LTS?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Oct 2015 18:27:08 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit


On 14/10/15 17:27, Mark Hatle wrote:
> On 10/14/15 8:28 AM, Chris Simmonds wrote:
>> Hi,
>>
>> Is there a statement about the period of support for a Yocto release?
>> Looking through the updates, it seems that 12 months is typical, a was
>> the case for 1.4, 1.5 and 1.6 for example, but I cannot see a
>> declaration anywhere that this is the expected norm.
>>
>> Leading on from that, is 12 months enough? Most projects have a
>> lifecycle that is much longer. Is there an argument for an LTS Yocto
>> release, maybe once a year? If not, what is the recommended way for a
>> project developer to keep a distribution up to date in the light of the
>> several well-publicised security flaws that have been discovered over
>> the last year or so and the new ones that will no doubt be discovered in
>> the future?
> 
> https://wiki.yoctoproject.org/wiki/FAQ#What_is_the_overall_support_plan_for_the_Yocto_Project.3F
> 
> =What is the release cycle of the Yocto Project?=
> Each release of the Yocto Project is subject to its own release schedule
> according to the community-maintained Project Planning Guide. It is generally
> expected that a new version of the Yocto Project will be released every six months.
> 
> =What is the overall support plan for the Yocto Project?=
> Security patches and critical bug fixes are supplied one release back. No
> toolchain or kernel changes are allowed for these updates. Support for longer
> periods of time can be supplied by commercial OSVs.
> 
> 
> 
> Effectively this means that support is on the last two releases.  Releases are
> typically released every 6 months.  After that point it is usually supported by
> OSVs, or others that offer commercial services.  In the past we have done a few
> very late security fixes past the 'last two releases' point, however that has
> been for unique situations.
> 
> You should consider keeping current with the Yocto Project releases or consider
> commercial support if you need more then an approx 12 - 18 month support cycle.
> 
> --Mark
> 

Thanks, that is all clear now.

Chris

