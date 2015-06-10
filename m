Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91C95E00982; Wed, 10 Jun 2015 12:55:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AE92E0086D
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 12:55:15 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 10 Jun 2015 12:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,589,1427785200"; 
	d="scan'208,217";a="506284993"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO [10.219.4.173])
	([10.219.4.173])
	by FMSMGA003.fm.intel.com with ESMTP; 10 Jun 2015 12:55:14 -0700
Message-ID: <55789683.2040704@linux.intel.com>
Date: Wed, 10 Jun 2015 14:56:51 -0500
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Luke (Lucas) Starrett" <lstarret@broadcom.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DB59870584238C45879465F0A2E5C3F17B01E6@IRVEXCHMB14.corp.ad.broadcom.com>
In-Reply-To: <DB59870584238C45879465F0A2E5C3F17B01E6@IRVEXCHMB14.corp.ad.broadcom.com>
Subject: Re: multi-user shared state
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
X-List-Received-Date: Wed, 10 Jun 2015 19:55:22 -0000
Content-Type: multipart/alternative;
	boundary="------------030905060004010909000405"

--------------030905060004010909000405
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Luke,

Comments below,

Best regards,
     alimon

[1] https://autobuilder.yoctoproject.org/
[2] http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/

On 10/06/15 14:25, Luke (Lucas) Starrett wrote:
> Hi,
>
> I'm trying to understand the feasibility of shared-state across multiple users in a development environment.  Does anyone have first-hand experience with this?  Am I asking for trouble?

It is feasible some the sstates can be generated using Yocto Autobuilder 
[1] [2] that support setup of various builder machines one as 
controller/worker and workers, things to
consider are:

  * Network bandwidth: Shared states works good on LAN environments.
  * Yocto Autobuilder and Developers Distro's: Shared states generates
    packages that are dependent on the distro like native ones, for use
    100% of shared state is needed to use the same distro.

>
> If this is expected to work, a secondary question would be whether or not shared-state on a NFS mounted path works.  Any thoughts?

The common setup consist in a one machine that acts as a 
controller/worker and shared the sstate and downloads to the workers 
using NFS for Developer usage it's better to share with
HTTP to avoid problems with the filesystem permissions.

>
> Thanks,
>
> Luke Starrett
>
>
>
>


--------------030905060004010909000405
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi Luke,<br>
    <br>
    Comments below,<br>
    <br>
    Best regards,<br>
        alimon<br>
    <br>
    [1] <a class="moz-txt-link-freetext" href="https://autobuilder.yoctoproject.org/">https://autobuilder.yoctoproject.org/</a><br>
    [2] <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/">http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/</a><br>
    <br>
    <div class="moz-cite-prefix">On 10/06/15 14:25, Luke (Lucas)
      Starrett wrote:<br>
    </div>
    <blockquote
cite="mid:DB59870584238C45879465F0A2E5C3F17B01E6@IRVEXCHMB14.corp.ad.broadcom.com"
      type="cite">
      <pre wrap="">Hi,

I'm trying to understand the feasibility of shared-state across multiple users in a development environment.  Does anyone have first-hand experience with this?  Am I asking for trouble?</pre>
    </blockquote>
    <br>
    It is feasible some the sstates can be generated using Yocto
    Autobuilder [1] [2] that support setup of various builder machines
    one as controller/worker and workers, things to<br>
    consider are:<br>
    <br>
    <ul>
      <li>Network bandwidth: Shared states works good on LAN
        environments.<br>
      </li>
      <li>Yocto Autobuilder and Developers Distro's: Shared states
        generates packages that are dependent on the distro like native
        ones, for use 100% of shared state is needed to use the same
        distro.<br>
      </li>
    </ul>
    <blockquote
cite="mid:DB59870584238C45879465F0A2E5C3F17B01E6@IRVEXCHMB14.corp.ad.broadcom.com"
      type="cite">
      <pre wrap="">

If this is expected to work, a secondary question would be whether or not shared-state on a NFS mounted path works.  Any thoughts?</pre>
    </blockquote>
    <br>
    The common setup consist in a one machine that acts as a
    controller/worker and shared the sstate and downloads to the workers
    using NFS for Developer usage it's better to share with<br>
    HTTP to avoid problems with the filesystem permissions.<br>
    <br>
    <blockquote
cite="mid:DB59870584238C45879465F0A2E5C3F17B01E6@IRVEXCHMB14.corp.ad.broadcom.com"
      type="cite">
      <pre wrap="">

Thanks,

Luke Starrett


</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------030905060004010909000405--
