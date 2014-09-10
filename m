Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DC1DE0056A; Tue,  9 Sep 2014 22:10:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA06E0054C
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 22:10:33 -0700 (PDT)
Received: by mail-ob0-f172.google.com with SMTP id wp18so1759525obc.17
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 22:10:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=QHY1Z+Ye4yfelcJR3lgnBNS7WPZKlBM27m+AlknKPK0=;
	b=VftGxxJskYfqlkormyARKHiGFYo9vGt+YjSNHBRWz6zkLQZJpvyNJnI+q+Og25hgsL
	MqpNKJ5U+6FwoCGgxGcGc9lB0yKp8N1Daro6iU4pp18OoomoPO6IKh8LIjuufZdtpnbC
	OlIIw/bUtEHxIfU4FE8awXHlPd304502DrvP/vyxR6UU2DrL59xrRj195+YZsU87Krsw
	fTkqfImx9bxsLCufTwnty+EQ0oMrVi0uVLeXWVhVFXowR7R5YTPmYOFh+/ie19xxKrlA
	PZtBPAASLmxGguCe3dn/ihmLYcZzWHIGGG91IVMHnUFp685C5jvUr81cKrRBVQq0vyfM
	4H3A==
X-Gm-Message-State: ALoCoQlQMY8IAo+vT1MlCW8dditu0Xai9IjNoEQtuJQJeUvuTorM5odigzrgzxC+TOW26qc4lil+
X-Received: by 10.60.41.41 with SMTP id c9mr20919oel.76.1410325832942; Tue, 09
	Sep 2014 22:10:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.187.8 with HTTP; Tue, 9 Sep 2014 22:10:12 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FE9C4D@ORSMSX101.amr.corp.intel.com>
References: <CAMSG=xW13=_vydq4ytYT_G2FTz+RH9EoTYpQqf667QO1mb_=pg@mail.gmail.com>
	<CAP71WjzYhpLsxEYHb+4OvfHYAMx7X+1oUMzX=3ySeH_M91==RA@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FE8C08@ORSMSX101.amr.corp.intel.com>
	<CAP71Wjx8Ck2hzrUE-XnDiBzkxoewPTT8pXaUKkoFh4EVgYv0Kg@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FE9C4D@ORSMSX101.amr.corp.intel.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 10 Sep 2014 07:10:12 +0200
Message-ID: <CAP71WjxpvupOpEx=OJvAt1=qXgX7J7O2nOHi5ST-_iOJhoymnw@mail.gmail.com>
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
X-List-Received-Date: Wed, 10 Sep 2014 05:10:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 10, 2014 at 7:07 AM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> I should have used a formatting tag in the manual source to indicate "myr=
ecipe" as user input.  Without the formatting, it implies that "myrecipe" i=
s literal when it is not.  I guess the example is not technically wrong if =
the recipe is actually named "myrecipe".  I like your added information abo=
ut setting it in the recipe.  I will add that as well.

ah. ok. i see!

