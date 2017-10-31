Return-Path: <david.j.cobbley@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1A94E00D2E; Tue, 31 Oct 2017 15:48:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C99DE00D1C
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 15:48:55 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP; 31 Oct 2017 15:48:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,326,1505804400"; 
	d="scan'208,217";a="169678598"
Received: from parzival.jf.intel.com (HELO [10.54.51.76]) ([10.54.51.76])
	by fmsmga005.fm.intel.com with ESMTP; 31 Oct 2017 15:48:54 -0700
To: "Burton, Ross" <ross.burton@intel.com>
References: <587799c6-cd3f-59c0-4b04-792c0fa1de8b@linux.intel.com>
	<CAJTo0LbRjuGie2HmMRAKObK=f8BJXyuTem29NTRyeYn1fJg32A@mail.gmail.com>
From: Dave Cobbley <david.j.cobbley@linux.intel.com>
Message-ID: <77954c37-5bf5-f913-baf9-c6c76388f59d@linux.intel.com>
Date: Tue, 31 Oct 2017 15:48:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbRjuGie2HmMRAKObK=f8BJXyuTem29NTRyeYn1fJg32A@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ptest - single package
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
X-List-Received-Date: Tue, 31 Oct 2017 22:48:55 -0000
Content-Type: multipart/alternative;
	boundary="------------F11635716520105A122FBF71"
Content-Language: en-US

--------------F11635716520105A122FBF71
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Ross,

That works great.

Thanks,

-Dave


On 10/31/2017 03:43 PM, Burton, Ross wrote:
> On 31 October 2017 at 21:51, Dave Cobbley 
> <david.j.cobbley@linux.intel.com 
> <mailto:david.j.cobbley@linux.intel.com>> wrote:
>
>     Hey,
>
>     I am trying to add a single ptest to my image without adding all
>     ptests from all other packages in my distro.
>
>     https://wiki.yoctoproject.org/wiki/Ptest
>     <https://wiki.yoctoproject.org/wiki/Ptest> only has instructions
>     to add ptest-pkgs, but this is too large for my embedded platform.
>
>     How can I install ptest-runner plus the single ptest from a
>     specific recipe?
>
>
> The ptest packages are normal packages, so just add [package]-ptest to 
> the image.  The ptest packages recommend ptest-runner automatically, 
> so you don't need to pull that in.
>
> Ross


--------------F11635716520105A122FBF71
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Ross,</p>
    <p>That works great.</p>
    <p>Thanks,</p>
    <p>-Dave<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 10/31/2017 03:43 PM, Burton, Ross
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0LbRjuGie2HmMRAKObK=f8BJXyuTem29NTRyeYn1fJg32A@mail.gmail.com">
      <div dir="ltr">On 31 October 2017 at 21:51, Dave Cobbley <span
          dir="ltr">&lt;<a href="mailto:david.j.cobbley@linux.intel.com"
            target="_blank" moz-do-not-send="true">david.j.cobbley@linux.intel.com</a>&gt;</span>
        wrote:<br>
        <div class="gmail_extra">
          <div class="gmail_quote">
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">Hey,<br>
              <br>
              I am trying to add a single ptest to my image without
              adding all ptests from all other packages in my distro.<br>
              <br>
              <a href="https://wiki.yoctoproject.org/wiki/Ptest"
                rel="noreferrer" target="_blank" moz-do-not-send="true">https://wiki.yoctoproject.org/<wbr>wiki/Ptest</a>
              only has instructions to add ptest-pkgs, but this is too
              large for my embedded platform.<br>
              <br>
              How can I install ptest-runner plus the single ptest from
              a specific recipe?<br>
            </blockquote>
            <div><br>
            </div>
            <div>The ptest packages are normal packages, so just add
              [package]-ptest to the image.  The ptest packages
              recommend ptest-runner automatically, so you don't need to
              pull that in.</div>
            <div><br>
            </div>
            <div>Ross </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------F11635716520105A122FBF71--
