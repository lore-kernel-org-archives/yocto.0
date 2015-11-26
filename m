Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F8A3E00855; Thu, 26 Nov 2015 09:43:27 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38881E00343
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 09:43:23 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 26 Nov 2015 09:43:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,347,1444719600"; 
	d="scan'208,217";a="860030070"
Received: from lsandov1-mob1-linux.zpn.intel.com (HELO [10.219.5.40])
	([10.219.5.40])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2015 09:43:20 -0800
To: Dariusz Pelowski <dariusz.pelowski@gmail.com>, yocto@yoctoproject.org
References: <CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <56574564.7030909@linux.intel.com>
Date: Thu, 26 Nov 2015 11:46:12 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com>
Subject: Re: Failing devshell
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
X-List-Received-Date: Thu, 26 Nov 2015 17:43:27 -0000
Content-Type: multipart/alternative;
	boundary="------------070307020500000406060004"

--------------070307020500000406060004
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


>
> Is it acceptable solution? Could you apply attached patch?
>

A less intrusive change would be to check if the output of the --version 
command contains the word 'GNOME' (either using the 'in' build-in 
operation or string.find). This is done in the same function you 
modified in your previous patch.

> Thanks,
> Dariusz
>
>
>


--------------070307020500000406060004
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <blockquote
cite="mid:CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
          Is it acceptable solution? Could you apply attached patch?<br>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
    A less intrusive change would be to check if the output of the
    --version command contains the word 'GNOME' (either using the 'in'
    build-in operation or string.find). This is done in the same
    function you modified in your previous patch.<br>
    <br>
    <blockquote
cite="mid:CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Thanks,<br>
          Dariusz<br>
          <br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------070307020500000406060004--
