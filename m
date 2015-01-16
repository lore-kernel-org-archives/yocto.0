Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1D9CE0093B; Thu, 15 Jan 2015 20:35:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 693D3E00782
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 20:35:35 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t0G4ZWtY024022
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 15 Jan 2015 20:35:33 -0800 (PST)
Received: from server.local (128.224.21.220) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Thu, 15 Jan 2015 20:35:32 -0800
Message-ID: <54B89513.70103@windriver.com>
Date: Thu, 15 Jan 2015 23:35:31 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: <Neil.Wu@Emerson.com>, <yocto@yoctoproject.org>
References: <20141211004713.GC4102@mentor.com>	<1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
	<3204FE6663E1F14CAF4CA6928E60C8522763CB6C@USSTLZ-PMSG012.emrsn.org>
	<54B7BAE5.7020700@windriver.com>
	<3204FE6663E1F14CAF4CA6928E60C8522763CBF5@USSTLZ-PMSG012.emrsn.org>
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8522763CBF5@USSTLZ-PMSG012.emrsn.org>
Subject: Re: can't find the source code of kernel
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
X-List-Received-Date: Fri, 16 Jan 2015 04:35:41 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-01-15 8:13 PM, Neil.Wu@Emerson.com wrote:
> Hi, Bruce
> Thank you for your reply.
> In the WORKDIR , it just has "linux-qemuarm-standard-build" and not have the "linux".

Are you sure you are building Yocto 1.7 and not the master branch ?

Until about a month ago, every build had the source along side the
split build directory .. in a directory called linux. But as I
mentioned, we are working to move the kernel to build out of the
sysroot/shared working directory.

>
> My WORKDIR directory is "~/poky/build/tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/3.14.24+gitAUTOINC+a227f20eff_6166316d47-r0", but I don't find the tarball of "linux-14.24"
> in download directory. It has tarball "linux-17.7.tar.xz".
>
> Do you think whether these is the reason?

They shouldn't be related. But that tar.xz you reference above is
clearly from some other kernel build than the linux yocto variant.

>
> I don't know how to set the version of linux when the project  building the image.
> Maybe, I set the linux to 17.7 version, the problem can solve.

I'm not sure how you are getting a 17.7 tarball, but the linux-yocto
tree builds from a git repository, not a tarball.

In that directory where you see the qemuarm build you should also see a
git.indirectionsymlink that points to the git tree in downloads/git2/

Cheers,

Bruce

>
> Do you have any other better suggestion? Thank you very much.
>
> Neil
>
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Thursday, January 15, 2015 9:05 PM
> To: Wu, Neil [CLIMATE/RS/CN]; yocto@yoctoproject.org
> Subject: Re: [yocto] can't find the source code of kernel
>
> On 2015-01-15 5:03 AM, Neil.Wu@Emerson.com wrote:
>> Hi ,all
>>
>> The version of poky is 1.7. I build the linux-yocto is  successful .
>>
>> bitbake linux-yocto
>>
>> But, why I can't find the source code of linux  in ${WORKDIR}.
>
> It should be there (note: it is about to move in master, but not in 1.7.1).
>
> In WORKDIR, you have "linux" (the source) and linux-$MACHINE-build (the
> build).
>
> Bruce
>
>>
>> Best wishes
>>
>> Neil
>>
>>
>>
>


