Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4CD4E00ACF; Tue, 13 Jun 2017 15:01:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25E9EE00888
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 15:01:47 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id l6so37514847iti.1
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 15:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=vdvXml+0O2afqhsFCga0+ZsRyytliTT+lIBuYKq3E1E=;
	b=E/s4lzGbBf/bY4Z4/aeLnUnwtU6LWpwG30rBMRdWK6eyaS1q5tXZVMfemoyV2jf8/8
	nWk8UKNVaBldEvEyOfc7ORu+xff6+2+s0MPJCA/g3E8Lzi/kcJb1qmVrWIWTsCie7KK9
	tzJbqyZVAKmB6UynITmeM91A/ZBAxAhATxoX58syFzM7XjOG5uP4jNxZiMoA1t4EWcXD
	yAizyrytYKMUlUdegYJpOaLjQe9WZ8RmLBSFqyjw8WKlIMjtbhHsXgHev/UaYNhzrryu
	t/yW39NTi0kMHe3nyEZRHB6YfhhDLIcq3fLBD6auCGrpcIyLRs1npPz0Ed26nxLoyK4A
	iE8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=vdvXml+0O2afqhsFCga0+ZsRyytliTT+lIBuYKq3E1E=;
	b=PjtS/6ihJ7H2dORXW71TL6bonWz2pGXXbcmI6H0vCaDc1KRSsakh6+amsElgHnSnSR
	fa2/BEwR5owTXI14/g3iCRb/ttmSDFhj4AOkk955d4O/GPtJ8tAcRDnhJSlRzyGP8zxl
	lGKANDdcwXV3FSHZLYtk8pRg58MpfAtqAVlwxrPDKFM1jdMYwteq9QywQbgpxZcRQ+Ww
	e9xmqRJggJZaM0uNXYgAs61r5lzaWzm76SWB81oniRSHZ+GnrQEBCAu6P1RJc+JUgYSh
	1BPCSY+W1fpA3Pz15vm6kb3qeZ/yuNCLfpamGLqVLqRhvoUD3NwxaDxr5gWg1ASe88OZ
	dcVQ==
X-Gm-Message-State: AKS2vOwfXigKMt1+3w2myMjddy2e/xnyOKWcEVpSNL/axQjODLIWw+bF
	EPP8CHXAqJaNulwGf0o=
X-Received: by 10.36.181.8 with SMTP id v8mr3655510ite.71.1497391306654;
	Tue, 13 Jun 2017 15:01:46 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126])
	by smtp.gmail.com with ESMTPSA id o7sm6654846iof.2.2017.06.13.15.01.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Jun 2017 15:01:45 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <8d6fe5c7-dbfa-7a17-071c-1330cdf3a672@gmail.com>
	<1497382345.23013.6.camel@linux.intel.com>
	<4f2248fb-0d42-6876-9950-815af230c127@gmail.com>
	<CAJTo0Laq0gpygTTi-fAmgYHbD-_sTLQTG6UsBDjZOMg+eezpFA@mail.gmail.com>
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <dae4421f-18ad-f928-c76b-2a214cca2560@gmail.com>
Date: Tue, 13 Jun 2017 15:01:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0Laq0gpygTTi-fAmgYHbD-_sTLQTG6UsBDjZOMg+eezpFA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Preventing a package from building
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
X-List-Received-Date: Tue, 13 Jun 2017 22:01:50 -0000
Content-Type: multipart/alternative;
	boundary="------------DFE797D05EDB745C2120A853"
Content-Language: en-US

--------------DFE797D05EDB745C2120A853
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Yes that's very good in the theoretical, but I was looking for actual 
commands to get this done.


Solution was from Leo Sandoval,


> COMPATIBLE_HOST = "null"

inside of the chromium_52.0.2743.76.bbappend





On 06/13/2017 02:56 PM, Burton, Ross wrote:
>
> The canonical solution here is to write your own image recipe that 
> doesn't include chromium.  Copy the evaluation image, and edit it as 
> required.
>
> Ross


--------------DFE797D05EDB745C2120A853
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco">Yes that's very good in the theoretical, but
        I was looking for actual commands to get this done.</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">Solution was from Leo Sandoval, <br>
      </font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">
        <blockquote type="cite">
          <pre wrap="">COMPATIBLE_HOST = "null"</pre>
        </blockquote>
        <br>
      </font></p>
    <p><font face="Monaco">inside of the chromium_52.0.2743.76.bbappend</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><br>
    </p>
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 06/13/2017 02:56 PM, Burton, Ross
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0Laq0gpygTTi-fAmgYHbD-_sTLQTG6UsBDjZOMg+eezpFA@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          The canonical solution here is to write your own image recipe
          that doesn't include chromium.  Copy the evaluation image, and
          edit it as required.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------DFE797D05EDB745C2120A853--
