Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42C53E00C01; Tue, 10 Oct 2017 23:45:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BAFFE00B53
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 23:45:37 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 72DBB260F57
Message-ID: <1507704333.9509.23.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: Aaron_Wright@selinc.com, yocto@yoctoproject.org
Date: Wed, 11 Oct 2017 08:45:33 +0200
In-Reply-To: <OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
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
X-List-Received-Date: Wed, 11 Oct 2017 06:45:39 -0000
Content-Type: multipart/alternative; boundary="=-R9QZ5hE1LKXsGfmragLx"

--=-R9QZ5hE1LKXsGfmragLx
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-10-10 at 15:31 -0700, Aaron_Wright@selinc.com wrote:
> > Hi
> 
> > 
> 
> > I want to use the same user in two different recipe. 
> 
> > I create the user in recipe A.bb and it works fine.
> 
> > Now I want to use the same user in B.bb so I add DEPENDS = "A"
> 
> 
> > thinking that sysroot will be
> 
> > populated with A.bb users.
> 
> > 
> 
> > But when I bitbake the recipe, user is not found. 
> 
> > I conclude that I have to use USERADD_* in each recipe, right?
> 
> > 
> 
> > What happen if I use different USERADD_PARAM_${PN} in each recipe?
> 
> > 
> 
> > I also try to use EXTRA_USERS_PARAMS but without success?
> 
> > 
> 
> > Is there a way to populate sysroot with users?
> 
> > 
> 
> > Thanks
> 
> > 
> 
> > -- 
> 
> > Fabien
> 
> > -- 
> 
> 
> 
> When I have this issue I just make a separate recipe
> that creates the user, and have all the other recipes depend on it.
> 
> That way the user is always created with the same
> parameters, without possibility of getting out of sync.

Thanks Aaron

Yes it is exactly what we do before with morty but now we use pyro and the sysroot is per recipe and
not common to all recipe.
And I search in the sysroot and the users created in recipe A are not applied to /etc/passwd.

--=-R9QZ5hE1LKXsGfmragLx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html><head></head><body><div>On Tue, 2017-10-10 at 15:31 -0700, Aaron_Wright@selinc.com wrote:</div><blockquote type="cite"><tt><font size="2">&gt; Hi<br>
&gt; <br>
&gt; I want to use the same user in two different recipe.&nbsp;<br>
&gt; I create the user in recipe A.bb and it works fine.<br>
&gt; Now I want to use the same user in B.bb so I add DEPENDS = "A"
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
<br><tt><font size="2">When I have this issue I just make a separate recipe
that creates the user, and have all the other recipes depend on it.</font></tt>
<br><tt><font size="2">That way the user is always created with the same
parameters, without possibility of getting out of sync.</font></tt></blockquote><div><br></div><div>Thanks Aaron</div><div><br></div><div>Yes it is exactly what we do before with morty but now we use pyro and the sysroot is per recipe and not common to all recipe.</div><div>And I search in the sysroot and the users created in recipe A are not applied to /etc/passwd.</div></body></html>

--=-R9QZ5hE1LKXsGfmragLx--
