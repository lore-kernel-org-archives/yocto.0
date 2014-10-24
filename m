Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29D75E00830; Fri, 24 Oct 2014 01:35:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B00B3E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 01:35:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9O8Yov7010877; Fri, 24 Oct 2014 09:34:50 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id iNxJzrOYkptT; Fri, 24 Oct 2014 09:34:50 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9O8Yimt010874
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 24 Oct 2014 09:34:45 +0100
Message-ID: <1414139719.30118.5.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Fri, 24 Oct 2014 09:35:19 +0100
In-Reply-To: <30C2D590D16A5C46ADFE65219103779841146D7D@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779841146D7D@AZ-US1EXMB03.global.avaya.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QA Issue for recipe inheriting from native.bbclass
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
X-List-Received-Date: Fri, 24 Oct 2014 08:35:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2014-10-23 at 16:58 +0000, Vuille, Martin (Martin) wrote:
> I have a recipe that inherits from meta/classes/native.bbclass
>  
> I am getting an ERROR: QA Issue: for this recipe:
>  
> “Variable RPROVIDES is set as not being package specific, please fix
> this.”
>  
> which, as far as I can tell, is due to the RPROVIDES assignment in
> native.bbclass
>  
> Is this a bug? Is the right fix to qualify RPROVIDES in
> native.bbclass?

Is PACKAGES set to some value? It shouldn't show that warning if
PACKAGES is empty.

Cheers,

Richard



