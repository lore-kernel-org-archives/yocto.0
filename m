Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD79BE00D04; Mon, 22 Aug 2016 03:30:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC95EE00DBC
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 03:30:19 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga102.jf.intel.com with ESMTP; 22 Aug 2016 03:30:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,559,1464678000"; 
   d="scan'208";a="473917"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.24.69])
	by orsmga004.jf.intel.com with ESMTP; 22 Aug 2016 03:30:06 -0700
Message-ID: <1471861805.5256.13.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 11:30:05 +0100
In-Reply-To: <1471624053-7572-1-git-send-email-william.c.randle@intel.com>
References: <1471624053-7572-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] SendQAEmail.py: cleanup email formatting
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
X-List-Received-Date: Mon, 22 Aug 2016 10:30:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-08-19 at 09:27 -0700, Bill Randle wrote:
> "-e" option is not required and gets inserted into email text if
> present.

Pushed to master, thanks.

Joshua

> 
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  lib/python2.7/site-packages/autobuilder/buildsteps/SendQAEmail.py |
> 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/SendQAEmail.py b/lib/python2.7/site-
> packages/autobuilder/buildsteps/SendQAEmail.py
> index 3691cc6..1bb2893 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/SendQAEmail.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/SendQAEmail.py
> @@ -95,7 +95,7 @@ Please begin QA on this build as soon as
> possible.''' % (rel_name, self.getPrope
>  
>              email_header += "Subject: " + mailsubject + "\n"
>  
> -            mailcmd = 'echo -e "' + email_header + "\n" + email_base
> + '\n' + email_body + '\n' + mailsig + ' " | sendmail -t'
> +            mailcmd = 'echo "' + email_header + "\n" + email_base +
> '\n' + email_body + '\n' + mailsig + ' " | sendmail -t'
>  
>              self.command = mailcmd
>          else:

