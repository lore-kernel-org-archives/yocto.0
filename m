Return-Path: <guilhem.marion@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4846EE0097C; Mon,  1 Oct 2018 00:27:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [91.216.209.19 listed in list.dnswl.org]
X-Greylist: delayed 556 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Oct 2018 00:27:22 PDT
Received: from idris.smile.fr (idris.smile.fr [91.216.209.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D05DE003D9
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2018 00:27:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by idris.smile.fr (Postfix) with ESMTP id 436461EE2270;
	Mon,  1 Oct 2018 09:18:05 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at smile.fr
Received: from idris.smile.fr ([127.0.0.1])
	by localhost (bluemind-mta.prod.vitry.intranet [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id 9LiYZrhIxucY; Mon,  1 Oct 2018 09:18:05 +0200 (CEST)
Received: from bluemind.smile.fr (bluemind.prod.vitry.intranet [10.10.1.35])
	by idris.smile.fr (Postfix) with ESMTPS id 21A441EE21E6;
	Mon,  1 Oct 2018 09:18:05 +0200 (CEST)
Received: from [10.12.90.110]
	(static-css-ccs-204145.business.bouyguestelecom.com
	[176.157.204.145]) (Authenticated sender: gumar@smile.fr)
	by bluemind.smile.fr (Postfix) with ESMTPSA id 0C4BB546004A;
	Mon,  1 Oct 2018 09:18:05 +0200 (CEST)
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
References: <053f87023fdf4190982b0595969a57c7@ifm.com>
From: Guilhem Marion <guilhem.marion@smile.fr>
Message-ID: <af873815-b1d1-269a-f05b-618268b0286d@smile.fr>
Date: Mon, 1 Oct 2018 09:18:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Firefox/52.0 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <053f87023fdf4190982b0595969a57c7@ifm.com>
X-Mailman-Approved-At: Mon, 01 Oct 2018 01:07:44 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: upgrading packages in yocto
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
X-List-Received-Date: Mon, 01 Oct 2018 07:27:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello,


On 01/10/2018 08:21, Pandey, Kamal wrote:
> I want to upgrade some packages of poky/meta/recipes-graphics/ like weston_2.0.0.bb to weston_4.0.0.bb. Also I don't want any changes to be made in poky/meta layer. What is the best way of doing these kinds of upgradations. I think bbappend here will create problems as the SRC_URI and other variables use the PV from recipe name to fulfil some operations.
> The other thing I can do is create a weston_4.0.0.bb file in my own custom layer and work but then I don't know how to disable the older(original) weston_2.0.0.bb file.
> What will be the best method to upgrade packages. One thing to remind you that the SRC_URI is not a repository , it's a tarball repo. So I directly can't replace the SRC_URI in .bbappend file.
> Any leads regarding this will be appreciated.
You should look at layer priorities: 
https://www.yoctoproject.org/docs/2.5/ref-manual/ref-manual.html#var-BBFILE_PRIORITY

If you can set your layer to take precedence (higher priority) over 
poky/meta, your weston_4.0.0.bb will be picked over poky/meta's
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On Behalf Of yocto-request@yoctoproject.org
> Sent: 30 September 2018 00:30
> To: yocto@yoctoproject.org
> Subject: yocto Digest, Vol 96, Issue 79
>
> Send yocto mailing list submissions to
> 	yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
> 	https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoproject.org_listinfo_yocto&d=DwICAg&c=riR7jviByh3sGm7GIiSlHkFN0_aSATB6A8x0nHa2EM0&r=B4t2KSJ3IM1b9sK9gvCmTFe5JX-rxgD15fYh5lG11MM&m=Zi9dlMz5JoZfKdwcbr7eV_JK7qB8SJTPYP9LdRWnlG8&s=RQp-3-7SeXpR_ysQqD1qg5XYb2ycNNJlz5k63RsTovE&e=
> or, via email, send a message with subject or body 'help' to
> 	yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
> 	yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific than "Re: Contents of yocto digest..."
>
Hope this helped,
Cheers,

Guilhem

