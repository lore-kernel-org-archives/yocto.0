Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB9BBE00A9C; Tue, 10 Oct 2017 15:31:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.142 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from scamp.selinc.com (scamp.selinc.com [74.117.214.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55848E006CA
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 15:31:35 -0700 (PDT)
Received: from pps.filterd (scamp.selinc.com [127.0.0.1])
	by scamp.selinc.com (8.16.0.21/8.16.0.21) with SMTP id v9AMVTAp019181
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 15:31:35 -0700
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by scamp.selinc.com with ESMTP id 2dgcy23rtn-1
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 15:31:35 -0700
In-Reply-To: <1507671003.9509.21.camel@collabora.co.uk>
References: <1507671003.9509.21.camel@collabora.co.uk>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 5390C64E:C78BBBE2-882581B5:007B79AE;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
From: Aaron_Wright@selinc.com
Date: Tue, 10 Oct 2017 15:31:35 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP8|February  23,
	2017) at 10/10/2017 03:31:35 PM,
	Serialize complete at 10/10/2017 03:31:35 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8680
	signatures=668577
Subject: Re: How to use same user in two recipes?
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
X-List-Received-Date: Tue, 10 Oct 2017 22:31:36 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 007BBDD4882581B5_="

--=_alternative 007BBDD4882581B5_=
Content-Type: text/plain; charset="US-ASCII"

> Hi
> 
> I want to use the same user in two different recipe. 
> I create the user in recipe A.bb and it works fine.
> Now I want to use the same user in B.bb so I add DEPENDS = "A" 
> thinking that sysroot will be
> populated with A.bb users.
> 
> But when I bitbake the recipe, user is not found. 
> I conclude that I have to use USERADD_* in each recipe, right?
> 
> What happen if I use different USERADD_PARAM_${PN} in each recipe?
> 
> I also try to use EXTRA_USERS_PARAMS but without success?
> 
> Is there a way to populate sysroot with users?
> 
> Thanks
> 
> -- 
> Fabien
> -- 

When I have this issue I just make a separate recipe that creates the 
user, and have all the other recipes depend on it.
That way the user is always created with the same parameters, without 
possibility of getting out of sync.

--=_alternative 007BBDD4882581B5_=
Content-Type: text/html; charset="US-ASCII"

<tt><font size=2>&gt; Hi<br>
&gt; <br>
&gt; I want to use the same user in two different recipe.&nbsp;<br>
&gt; I create the user in recipe A.bb and it works fine.<br>
&gt; Now I want to use the same user in B.bb so I add DEPENDS = &quot;A&quot;
<br>
&gt; thinking that sysroot will be<br>
&gt; populated with A.bb users.<br>
&gt; <br>
&gt; But when I bitbake the recipe, user is not found.&nbsp;<br>
&gt; I conclude that I have to use USERADD_* in each recipe, right?<br>
&gt; <br>
&gt; What happen if I use different USERADD_PARAM_${PN} in each recipe?<br>
&gt; <br>
&gt; I also try to use EXTRA_USERS_PARAMS but without success?<br>
&gt; <br>
&gt; Is there a way to populate sysroot with users?<br>
&gt; <br>
&gt; Thanks<br>
&gt; <br>
&gt; -- <br>
&gt; Fabien<br>
&gt; -- <br>
</font></tt>
<br><tt><font size=2>When I have this issue I just make a separate recipe
that creates the user, and have all the other recipes depend on it.</font></tt>
<br><tt><font size=2>That way the user is always created with the same
parameters, without possibility of getting out of sync.</font></tt>

--=_alternative 007BBDD4882581B5_=--
