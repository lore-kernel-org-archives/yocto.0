Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AE09E00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 15:05:13 -0800 (PST)
Received: by qcsg14 with SMTP id g14so2946173qcs.35
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 15:05:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jfabernathy@gmail.com designates
	10.224.202.69 as permitted sender) client-ip=10.224.202.69; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of jfabernathy@gmail.com
	designates 10.224.202.69 as permitted sender)
	smtp.mail=jfabernathy@gmail.com;
	dkim=pass header.i=jfabernathy@gmail.com
Received: from mr.google.com ([10.224.202.69])
	by 10.224.202.69 with SMTP id fd5mr29057454qab.41.1327964712721
	(num_hops = 1); Mon, 30 Jan 2012 15:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	bh=xoBDr5gzZ9CRQyX2ISlpsYRpLerCH7seKIu8fKfcLMY=;
	b=sRuz85/lq2iL0APD4wIf/fUyg8TmJeL/91uU9ltfvhC0cApTDn6nW0GvFlolXoHbEz
	/IaFK1peWfYJGqB3W2A3Fv84fwXoofbFZX+Ny45KOBYOFa5PBmbn27pkAvW7Pn1DBGz/
	0MaIih3kTgwOKz1o+dqySps9uQUYip7wfEkIk=
Received: by 10.224.202.69 with SMTP id fd5mr24522622qab.41.1327964712647;
	Mon, 30 Jan 2012 15:05:12 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	fi8sm14889813qab.21.2012.01.30.15.05.11 (version=SSLv3 cipher=OTHER);
	Mon, 30 Jan 2012 15:05:12 -0800 (PST)
Message-ID: <4F27222D.7010302@gmail.com>
Date: Mon, 30 Jan 2012 18:05:17 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2720B1.8070001@linux.intel.com>
In-Reply-To: <4F2720B1.8070001@linux.intel.com>
Subject: Re: Using stable releases from git
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
X-List-Received-Date: Mon, 30 Jan 2012 23:05:13 -0000
Content-Type: multipart/alternative;
	boundary="------------080903060105070608040000"

--------------080903060105070608040000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/30/2012 05:58 PM, Joshua Lock wrote:
> It's beginning to sound like we've caught some folks off guard by 
> pushing changes to the edison branch of the poky repository in 
> preparation for an upcoming edison point release.
>
> The named branches are development branches for the release, stable 
> release development will be done in the named branch and we can't 
> guarantee they will be issue free (though we intend them to be where 
> possible).
>
> If you're looking to use a git checkout which matches the release 
> tarballs you should checkout the tags for the releases. i.e. for Poky 
> Edison-6.0/Yocto 1.1:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=edison-6.0
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tag/?id=edison-6.0
>
So instead of doing:

git checkout -b edison origin/edison

what should I do if I want to stay in sync with the tarball.  This may just be a doc problem.

Jim A


> Having suffered through a couple of stable cycles recently I 
> anticipate that in future the release branches will be updated more 
> frequently. This will make it even more important to use a tag, rather 
> than a branch, to track the releases using git.
>
> Cheers,
> Joshua


--------------080903060105070608040000
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 01/30/2012 05:58 PM, Joshua Lock wrote:
    <blockquote cite="mid:4F2720B1.8070001@linux.intel.com" type="cite">It's
      beginning to sound like we've caught some folks off guard by
      pushing changes to the edison branch of the poky repository in
      preparation for an upcoming edison point release.
      <br>
      <br>
      The named branches are development branches for the release,
      stable release development will be done in the named branch and we
      can't guarantee they will be issue free (though we intend them to
      be where possible).
      <br>
      <br>
      If you're looking to use a git checkout which matches the release
      tarballs you should checkout the tags for the releases. i.e. for
      Poky Edison-6.0/Yocto 1.1:
      <br>
      <br>
      <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=edison-6.0">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=edison-6.0</a>
      <br>
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tag/?id=edison-6.0">http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tag/?id=edison-6.0</a>
      <br>
      <br>
    </blockquote>
    <small>So instead of doing: </small><br>
    <pre class="literallayout">git checkout -b edison origin/edison

what should I do if I want to stay in sync with the tarball.  This may just be a doc problem.

Jim A

</pre>
    <blockquote cite="mid:4F2720B1.8070001@linux.intel.com" type="cite">Having
      suffered through a couple of stable cycles recently I anticipate
      that in future the release branches will be updated more
      frequently. This will make it even more important to use a tag,
      rather than a branch, to track the releases using git.
      <br>
      <br>
      Cheers,
      <br>
      Joshua
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------080903060105070608040000--
