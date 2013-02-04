Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB1C4E006D2
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2013 02:16:36 -0800 (PST)
Received: from mail-ye0-f198.google.com ([209.85.213.198])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 04 Feb 2013 02:16:36 -0800
Received: by mail-ye0-f198.google.com with SMTP id l11so8855584yen.5
	for <yocto@yoctoproject.org>; Mon, 04 Feb 2013 02:16:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=cjscsa9vwgMI9S7wW2mjQ1KeeGDcMjGxm43q38WvqN4=;
	b=nmpNhhY0JpTKPYPZgMBBA0R1dNf2IGEmmsqSFXY0Q522oG5m3woT97uT3nAR17rd7n
	9yAO3EIfJupA4Qy72Bv7xyYuhLKRfm8xtiGkqD7Dvm5EoEPjZtRly9M5vVuQ7BeIE5IW
	Gajugg2i5ZgLqK2nzbQB1rzxrtFPbLeZmkEnTt9zMSunlYse6xnlwnfy3LaJgbF7zXnb
	278Kfn0LCHqbv4KNgcGZ92FQ+JaR2EKZo8Fa8xVagyminUwCrmxXQCPLQAMRdlEo4xza
	lSuVQKjGtFMRfGwMka9EmkFZpE+mLMJWJtdaJH1OldT79PVWMtqc3u/m6o3zFIu6+VPk
	vq+Q==
X-Received: by 10.52.24.98 with SMTP id t2mr15470794vdf.69.1359972995611;
	Mon, 04 Feb 2013 02:16:35 -0800 (PST)
X-Received: by 10.52.24.98 with SMTP id t2mr15470783vdf.69.1359972995389; Mon,
	04 Feb 2013 02:16:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.131 with HTTP; Mon, 4 Feb 2013 02:16:15 -0800 (PST)
In-Reply-To: <1359856736-25568-1-git-send-email-cazfi74@gmail.com>
References: <1359856736-25568-1-git-send-email-cazfi74@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 4 Feb 2013 10:16:15 +0000
Message-ID: <CAJTo0LawPggogja+26bcns3bBxa_1xpYXM8bk2iog1Bu6urDjw@mail.gmail.com>
To: Marko Lindqvist <cazfi74@gmail.com>
X-Gm-Message-State: ALoCoQnbWYfulEMni3ZIwt9KnLeqY7fjum73oKlzFaoixhntY7p74K5L9R5zOJsNLO2tmLS5Dcpbv5W3qwN7A47W8HL0LBVLmugZFEjsAkBrfLb9xwAW217XNG9sja41rKaUfE5F9hfEdTk7OERc9H3zyUZW97k4xQ==
Cc: yocto@yoctoproject.org
Subject: Re: Matchbox-terminal fixes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Feb 2013 10:16:37 -0000
Content-Type: text/plain; charset=UTF-8

Hi Marko,

On 3 February 2013 01:58, Marko Lindqvist <cazfi74@gmail.com> wrote:
>   INSTALL in git repo is a symlink outside the repository, to
>   file installed as part of automake-1.10 (and only when automake-1.10
>   installed to default location) It was dangling in my system without
>   automake-1.10. Such a link should not be under version control

Well spotted - fixed in git. Does this cause any problems with
automake 1.13, or was it purely cosmetic?

Ross

