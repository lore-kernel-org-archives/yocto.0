Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E48DAE00B99; Thu, 14 Jan 2016 05:02:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8B13EE0090A
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 05:02:44 -0800 (PST)
Received: (qmail 20981 invoked by uid 1003); 14 Jan 2016 13:02:43 -0000
Received: from unknown (HELO ?192.168.1.22?) (philip@opensdr.com@69.43.24.179)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	14 Jan 2016 13:02:43 -0000
To: "Reshetova, Elena" <elena.reshetova@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <2236FBA76BA1254E88B949DDB74E612B41A4F981@IRSMSX102.ger.corp.intel.com>
From: Philip Balister <philip@balister.org>
Message-ID: <56979C72.8080309@balister.org>
Date: Thu, 14 Jan 2016 08:02:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <2236FBA76BA1254E88B949DDB74E612B41A4F981@IRSMSX102.ger.corp.intel.com>
Subject: Re: Package naming "exceptions" in Yocto
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
X-List-Received-Date: Thu, 14 Jan 2016 13:02:47 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Please note there is a security page on the wiki:

https://wiki.yoctoproject.org/wiki/Security

and there is a security list at:

yocto-security@yoctoproject.org

The list isn't very active, but it should be copied on all security
discussions. If you are interested you should be subscribed to this list.

If I hadn't read the email, I wouldn't have realized this was about
security issues.

Philip

On 01/14/2016 02:43 AM, Reshetova, Elena wrote:
> Hi,
> 
>  
> 
> I have a small question about "exceptional" names of packages in yocto/OE.
> Kernel package is being one example with the name "linux-yocto" vs.
> traditional "linux_kernel". 
> 
> Are there more such yocto-specific packages (of course excluding FW and
> other bsp-related packages)? A look over the package list didn't reveal any,
> but I wanted to double check. 
> 
>  
> 
> The reason I am asking is that in case when we try to determine the package
> CVEs against the NVD database, in these particular exception cases, we
> probably want to check not only "linux-yocto", but also "linux_kernel" open
> package CVEs with regards to specified version to make sure we cover as much
> as we can. 
> 
>  
> 
> Best Regards,
> Elena.
> 
>  
> 
> 
> 
> 

