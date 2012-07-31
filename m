Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88FDDE00288
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 02:31:40 -0700 (PDT)
Received: from mail-yw0-f52.google.com ([209.85.213.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 31 Jul 2012 02:31:40 -0700
Received: by yhpp61 with SMTP id p61so5141561yhp.25
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 02:31:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=ZNrF/y7z1cbsk5hBt1SSecZX5WvZNldThs2ctIeLksk=;
	b=T+QTvXdwUMJz0N7RtQfgdbW1ZC6+OSkh3rXb7ab4iVumxqvXSFrEhlYcO9utUvqUuT
	Tt+P7EhEuHCAo4+/qvT3gDaUpmB4fbQo8uQpfrrP1BCJV7pAti9WJ04M4fb5RwSCCLkO
	dktb4kWchAqDK4LAsMA1maZ+tphX6HHCJ/JSCIr6AEOxAu5g1FOBOgXwWdYFIT8kEAHD
	y5/L6oQTwJzaBd3DTcaDwMSi22wGj23lcRkIHVzdxf4zUnMsl+m3gVSxMLAWtY1BlbId
	rehHICIqWJdHF6nb5jR87ADYRVbV6XRQrmFoJu7NdmIb5JN3QaM4pzBVOXMPbR6kPTtX
	nmiQ==
Received: by 10.50.217.163 with SMTP id oz3mr1498905igc.5.1343727098865; Tue,
	31 Jul 2012 02:31:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.70.229 with HTTP; Tue, 31 Jul 2012 02:31:18 -0700 (PDT)
In-Reply-To: <4439C3C0562087488F139C696CD862A72C1827@SBS-MEDEC.medecbenelux.local>
References: <4439C3C0562087488F139C696CD862A72C1827@SBS-MEDEC.medecbenelux.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 31 Jul 2012 10:31:18 +0100
Message-ID: <CAJTo0La=eXxB2suczx3Y6XOAxf=fu5+W5gef2C-XqRQi=iqzAQ@mail.gmail.com>
To: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
X-Gm-Message-State: ALoCoQkUTfnNtOa46IfaBiK/GlF0euOay9iYQWDZ8RUVPLRfqe1AJSdeunDYmtYer4WbZXEiFG9E
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: general question about how certain features get processed into packages
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
X-List-Received-Date: Tue, 31 Jul 2012 09:31:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 31 July 2012 10:15, Tim Verstraete <Tim.Verstraete@medecbenelux.be> wrot=
e:
> Now my question is, where can I find what for example task-core-apps-cons=
ole
> exactly is as package collection? Since this is a core task list I though=
t I
> would find it in /meta/recipes-core/tasks but no luck, I did find
> task-core-boot there but that is it =E2=80=A6

On master at least, meta/recipes-core/tasks/tasks-core-console.bb
defines a package called task-core-apps-console and specified the
runtime dependencies of it.

In any case, git grep is your friend. :)

Ross

