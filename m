Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEC51E0098A; Tue, 21 Jun 2016 07:50:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17F97E00972
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 07:50:19 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jun 2016 07:50:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,504,1459839600"; 
	d="scan'208,217";a="126020887"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.5.155])
	([10.219.5.155])
	by fmsmga004.fm.intel.com with ESMTP; 21 Jun 2016 07:50:18 -0700
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DB23C91B06C303459B24BC3208AF424A20F4CF40@MBX214.d.ethz.ch>
	<a2cff31a-909e-988c-562b-29289f8c79c9@linux.intel.com>
	<DB23C91B06C303459B24BC3208AF424A20F4CFB7@MBX214.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20F4CFEE@MBX214.d.ethz.ch>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <297c1b45-94dd-b22f-7e8d-7165c1404b22@linux.intel.com>
Date: Tue, 21 Jun 2016 09:52:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F4CFEE@MBX214.d.ethz.ch>
Subject: Re: Yocto 2.1 perl problem
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
X-List-Received-Date: Tue, 21 Jun 2016 14:50:26 -0000
Content-Type: multipart/alternative;
	boundary="------------6246CB016CFFBC4ED0653535"

--------------6246CB016CFFBC4ED0653535
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Right. In fact, there is a bug related to this problem


https://bugzilla.yoctoproject.org/show_bug.cgi?id=9763


Apparently, the fix is simple: move the --exclude argument just before 
the FILES. Simple change but affects several recipes.


Leo


On 06/21/2016 09:42 AM, Anicic Damir (PSI) wrote:
> I found something.
> It seems that tar 1.29 (which I recently installed) is broken.
>
> http://patchwork.openembedded.org/patch/123727/
>
> I'll try now with tar 1.28
>
>


--------------6246CB016CFFBC4ED0653535
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Right. In fact, there is a bug related to this problem</p>
    <p><br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=9763">https://bugzilla.yoctoproject.org/show_bug.cgi?id=9763</a></p>
    <p><br>
    </p>
    <p>Apparently, the fix is simple: move the --exclude argument just
      before the FILES. Simple change but affects several recipes.</p>
    <p><br>
    </p>
    <p>Leo<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 06/21/2016 09:42 AM, Anicic Damir
      (PSI) wrote:<br>
    </div>
    <blockquote
      cite="mid:DB23C91B06C303459B24BC3208AF424A20F4CFEE@MBX214.d.ethz.ch"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style id="owaParaStyle" type="text/css">P {margin-top:0;margin-bottom:0;}</style>
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">I found something.<br>
        It seems that tar 1.29 (which I recently installed) is broken.<br>
        <br>
        <a moz-do-not-send="true"
          href="http://patchwork.openembedded.org/patch/123727/"
          target="_blank">http://patchwork.openembedded.org/patch/123727/</a><br>
        <br>
        <div style="font-family: Times New Roman; color: #000000;
          font-size: 16px">I'll try now with tar 1.28<br>
          <br>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------6246CB016CFFBC4ED0653535--
