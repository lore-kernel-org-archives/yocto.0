Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E13B7E008E5; Wed,  7 Jan 2015 07:10:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A260E005A9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 07:09:57 -0800 (PST)
Received: from [70.30.87.145] (port=49872 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y8sF9-0000HM-HE; Wed, 07 Jan 2015 10:09:55 -0500
Date: Wed, 7 Jan 2015 10:09:55 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Pascal Bach <pascal.bach@siemens.com>
In-Reply-To: <1420642704-1482-1-git-send-email-pascal.bach@siemens.com>
Message-ID: <alpine.LFD.2.11.1501071007300.18694@localhost>
References: <1420642704-1482-1-git-send-email-pascal.bach@siemens.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-docs][PATCH 1/2] ref-manual: Document USE_DEVFS variable
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
X-List-Received-Date: Wed, 07 Jan 2015 15:10:01 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 7 Jan 2015, Pascal Bach wrote:

> Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> ---
>  documentation/ref-manual/ref-variables.xml |   17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
> index e3272fe..7907220 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -11199,6 +11199,23 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
>              </glossdef>
>          </glossentry>
>
> +        <glossentry id='var-USE_DEVFS'><glossterm><imagedata fileref="figures/define-generic.png" />USE_DEVFS</glossterm>
> +            <info>
> +               USE_DEVFS[doc] = "Determines if devtmps is used for/dev population."

                                                                     ^ space
> +            </info>
> +            <glossdef>
> +                <para>
> +                    Determines if <filename>devtmpfs</filename> is used for <filename>/dev</filename> population.
> +                    The default value used for <filename>USE_DEVFS</filename>
> +                    is "1" when no default value is specifically set.
> +                    Typically, you would set <filename>USE_DEVFS</filename>
> +                    to "0" if you like to have a statically populated <filename>/dev</filename>

                                                              ^ hyphenate
> +                    directory. See: <ulink url='&YOCTO_DOCS_DEV_URL;#selecting-dev-manager'>Development Manual</ulink>
> +                    for more information on <filename>/dev</filename> population.
> +                </para>
> +            </glossdef>
> +        </glossentry>
> +
>          <glossentry id='var-USE_VT'><glossterm><imagedata fileref="figures/define-generic.png" />USE_VT</glossterm>
>              <info>
>                 USE_VT[doc] = "When using SysVinit, determines whether or not to run a getty on any virtual terminals in order to enable logging in through those terminals."

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

