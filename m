Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 945CFE00566; Tue,  9 Sep 2014 22:02:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 635F6E0054C
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 22:02:07 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id e131so4230638oig.24
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 22:02:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6WmRtF+BRWvuIKgoiolPY4rug/xY8uoFASKEh5SivPA=;
	b=WsNcfn7QO8m0waUQVgfIqWHZ5q5w00qlcsOxXiWS9jE5O7zme06NrsgtiR9PMxsw+T
	5RGdxYQrdEVQ4MPiaAZfoFmIs1mUFqe37vxTd31VDyIBMZ8MrfYZJcopCc1a5/E1adG1
	MA7poldalLa70KSJjqnrMM8bH2uDYuqK+g4r3YIjyw5RgzpXVKEhIOSvnsX4DzQDzFW4
	hethMOFVjKb0vqK35IBNcprsLODYJYCqokDeTD6jqHaoSQ6k56Clg2+Y6VOmfKqP2gyl
	o0E5PeuehcDeaohrn5nQvxx7/klbJbccxW9C3t81u9ILzkcMyD0oC9wP0O2SzjzQdX6T
	BGJA==
X-Gm-Message-State: ALoCoQlqcfQ3q2dx0pLoP7dVWfl0YSdJle8og4wCO/WTB82NVngSBhs1OEOfO9xiLxepjRwBpXEl
X-Received: by 10.182.60.232 with SMTP id k8mr42064350obr.54.1410325326595;
	Tue, 09 Sep 2014 22:02:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.187.8 with HTTP; Tue, 9 Sep 2014 22:01:46 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FE8C08@ORSMSX101.amr.corp.intel.com>
References: <CAMSG=xW13=_vydq4ytYT_G2FTz+RH9EoTYpQqf667QO1mb_=pg@mail.gmail.com>
	<CAP71WjzYhpLsxEYHb+4OvfHYAMx7X+1oUMzX=3ySeH_M91==RA@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FE8C08@ORSMSX101.amr.corp.intel.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 10 Sep 2014 07:01:46 +0200
Message-ID: <CAP71Wjx8Ck2hzrUE-XnDiBzkxoewPTT8pXaUKkoFh4EVgYv0Kg@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Nemicolopterus Crypticus <ncrypticus@gmail.com>
Subject: Re: EXTERNALSRC
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
X-List-Received-Date: Wed, 10 Sep 2014 05:02:17 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 10, 2014 at 6:51 AM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> This is an error in the manual.  I have been formatting the user-supplied portions of examples now in an italisized font.  This one needs to be fixed.

hmm. i don't seem to see what's wrong in the user manual..

also, the _pn-banana is needed because the change is done in
local.conf. it is possible to set EXTERNALSRC variable in the recipe
directly (or in a .bbappend file), in which case it can simply be:
EXTERNALSRC = "<path>"
EXTERNALSRC_BUILD = "<path>"

maybe is that worth adding to the manual.

