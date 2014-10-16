Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C8EFE00790; Thu, 16 Oct 2014 09:16:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF85CE00744
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 09:16:00 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id e89so2741531qgf.8
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 09:16:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=pLOxjBNODATrpaJ7/IsxAj58sRdFbKT9V8DZXixZ54Q=;
	b=RIwkHgXBkLi1VVPdvFNTmvJ1kJh4bPKIH3tp86ymBCCbjBaYa7QYZbB38EFtXHAWx+
	+BvfKRofD9hQvp6wDA6L4pWZDicoud/brlg5j9g/uw7+qs7eytKfdSwTea1Ra9WnHyXN
	6xALG8v5fcrmNCsPnh/kKmzkzZthZ5Rsrq2pFkK4WdGxoyUIAa5fj/FY/s8DGS83J6wn
	BF4yXt4NARseDZ5EIHuoLKXpu5i9YKiaWSJrm83SNqTpdFjdMV7ndJ632qwUwg0+Ze8L
	6BltatDusrG9xqb/4QzOYSb/oiI5oY3q0NeMuFKtat0k+HpkCNWXitud27vt4k9RIfRC
	ecuw==
X-Gm-Message-State: ALoCoQknPbpZprMZP6I6zIfn+lHHTFbbqkLcCrz4KABZPG49MVe8un2CJCoiWf0GbNxvY47w8BWa
X-Received: by 10.224.79.79 with SMTP id o15mr3424968qak.93.1413476160163;
	Thu, 16 Oct 2014 09:16:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.93.65 with HTTP; Thu, 16 Oct 2014 09:15:39 -0700 (PDT)
In-Reply-To: <3230301C09DEF9499B442BBE162C5E482576ADB6@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E482576880D@SESTOEX04.enea.se>
	<CAJTo0La=7QNS53qZDgShj+9yr6Ge0hyk9HFAdS+Ue0bZAkck4A@mail.gmail.com>
	<CAJTo0La9iMQ4ZiSuTFo35271c2McpzkSvugOEqL6dBNoncdkZQ@mail.gmail.com>
	<3230301C09DEF9499B442BBE162C5E482576ADB6@SESTOEX04.enea.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 16 Oct 2014 17:15:39 +0100
Message-ID: <CAJTo0LZ6BxOWawnJZRPTEgw2ewzNg58dUOj0uVrUpkBbon7eNA@mail.gmail.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>,
	Catalin Popeanga <Catalin.Popeanga@enea.com>
Subject: Re: Truly scary SSL 3.0 vuln to be revealed soon:
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
X-List-Received-Date: Thu, 16 Oct 2014 16:16:08 -0000
Content-Type: text/plain; charset=UTF-8

On 16 October 2014 17:09, Sona Sarmadi <sona.sarmadi@enea.com> wrote:
> Do you know if gnutls implements the SSLv3 protocol?  I don't see any new security updates for gnutls (related to the SSLv3 vulnerability) ?

Yes it does, and no there isn't.

Ross

