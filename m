Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05962E00E0B; Wed, 13 Apr 2016 12:42:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id A347BE00833
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 12:42:43 -0700 (PDT)
Received: (qmail 9084 invoked by uid 1003); 13 Apr 2016 19:42:42 -0000
Received: from unknown (HELO ?192.168.11.142?)
	(philip@opensdr.com@71.171.15.136)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	13 Apr 2016 19:42:42 -0000
To: Richard Leitner <richard.leitner@skidata.com>, yocto@yoctoproject.org
References: <1460555872-27920-1-git-send-email-richard.leitner@skidata.com>
	<1460555872-27920-3-git-send-email-richard.leitner@skidata.com>
From: Philip Balister <philip@balister.org>
Message-ID: <570EA131.7030100@balister.org>
Date: Wed, 13 Apr 2016 15:42:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.1
MIME-Version: 1.0
In-Reply-To: <1460555872-27920-3-git-send-email-richard.leitner@skidata.com>
Subject: Re: [psplash][PATCH 3/3] README: add "Contributing" guideline
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
X-List-Received-Date: Wed, 13 Apr 2016 19:42:47 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 04/13/2016 09:57 AM, Richard Leitner wrote:
> The "Contributing" guideline section should help people sending their
> patches correctly.
> 
> A similar section is available in nearly all
> layers/repositories hosted on yoctoproject.org. Therefore add it also
> the the psplash repository.
> 
> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
> ---
>  README | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/README b/README
> index 86ef6ba..8779a38 100644
> --- a/README
> +++ b/README
> @@ -8,3 +8,21 @@ rotation. Its visual look is configurable by basic source changes.
>  
>  Also included is a 'client' command utility for sending information to
>  psplash such as boot progress information.
> +
> +Contributing
> +============
> +To contribute to this layer you should submit the patches for review to the
> +mailing list (yocto@yoctoproject.org).
> +
> +Please refer to
> +    http://openembedded.org/wiki/Commit_Patch_Message_Guidelines
> +for some useful guidelines to be followed when submitting patches.
> +
> +Mailing list:
> +    https://lists.yoctoproject.org/listinfo/yocto
> +
> +When creating patches, please use something like:
> +    git format-patch -M -s --subject-prefix='psplash][PATCH' origin
> +
> +When sending patches, please use something like:
> +    git send-email --to yocto@yoctoproject.org <generated patch>
> 

I cut and paste this line from the meta-oe README for sending patches,
it is a bit simpler than the two step process:

https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/README#L9

Philip


