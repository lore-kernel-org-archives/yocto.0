Return-Path: <clay@montgomery1.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBC0DE00736; Wed, 16 Dec 2015 15:49:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [69.89.18.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 397 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Dec 2015 15:49:46 PST
Received: from gproxy2-pub.mail.unifiedlayer.com
	(gproxy2-pub.mail.unifiedlayer.com [69.89.18.3])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CE528E00321
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 15:49:46 -0800 (PST)
Received: (qmail 25496 invoked by uid 0); 16 Dec 2015 23:43:06 -0000
Received: from unknown (HELO CMOut01) (10.0.90.82)
	by gproxy2.mail.unifiedlayer.com with SMTP; 16 Dec 2015 23:43:06 -0000
Received: from box858.bluehost.com ([69.195.124.58]) by CMOut01 with 
	id uPiy1r00B1Fiqph01Pj1Q4; Wed, 16 Dec 2015 16:43:05 -0700
X-Authority-Analysis: v=2.1 cv=Zc6OaKlA c=1 sm=1 tr=0
	a=6215HlyIVfFolxfkGyTlSg==:117 a=6215HlyIVfFolxfkGyTlSg==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=cwQF-0P1AAAA:8 a=DpUQn3bY8hUA:10 a=F7vrFIpsXqIA:10
	a=wUQvQvOEmiQA:10 a=r77TgQKjGQsHNAKrUKIA:9 a=iGHA9ds3AAAA:8
	a=eOfYFywM0scAnwVjL0sA:9 a=QEXdDO2ut3YA:10 a=pGLkceISAAAA:8
	a=oJM4AeZ8LBYvSwTzHyYA:9 a=a_-c3dPkAMzXE00-:21 a=_W_S_7VecoQA:10
Received: from [70.119.214.20] (port=50107 helo=[192.168.0.18])
	by box858.bluehost.com with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.84) (envelope-from <clay@montgomery1.com>)
	id 1a9Lil-0000FF-1p; Wed, 16 Dec 2015 16:42:59 -0700
To: Khem Raj <raj.khem@gmail.com>
References: <566DBA83.8010506@montgomery1.com>
	<30C0DEC6-AB2D-406C-ACC3-CEAAE0DE796C@gmail.com>
From: "Clay D. Montgomery" <clay@montgomery1.com>
Message-ID: <5671F707.8060603@montgomery1.com>
Date: Wed, 16 Dec 2015 17:43:03 -0600
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <30C0DEC6-AB2D-406C-ACC3-CEAAE0DE796C@gmail.com>
X-Identified-User: {1231:box858.bluehost.com:montgor0:montgomery1.com}
	{sentby:smtp auth 70.119.214.20 authed with
	clay@montgomery1.com}
Cc: yocto@yoctoproject.org
Subject: Re: Which OpenSSH packages to use?
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
X-List-Received-Date: Wed, 16 Dec 2015 23:49:49 -0000
Content-Type: multipart/alternative;
	boundary="------------090209000609050906020602"

--------------090209000609050906020602
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/13/2015 12:57 PM, Khem Raj wrote:
>
>> On Dec 13, 2015, at 10:35 AM, Clay D. Montgomery 
>> <clay@montgomery1.com <mailto:clay@montgomery1.com>> wrote:
>>
>> I'm trying to understand which of these OpenSSH package options I 
>> should use with the CORE_IMAGE_EXTRA_INSTALL option:
>>
>>     openssh
>>     openssh-sshd
>>     openssh-sftp
>>     openssh-sftp-server
>>
>> I want OpenSSH server functionality that supports both the scp and 
>> sftp protocols. I first tried just 'openssh' and found that it 
>> provides scp but not sftp.
>> So then I tried the latter 3 options and I got sftp, but not scp. Do 
>> I really need all 4 of these to get scp and sftp?
>>
>> I checked this recipe guide and found it lists yet another package 
>> named 'packagegroup-core-ssh-openssh 
>> <http://recipes.yoctoproject.org/rrs/recipedetail/122/>' but it says 
>> nothing about sftp.
>> http://recipes.yoctoproject.org/rrs/recipes/2.1/M2/
>>
>> I would appreciate some advise.
>
> you can just do
>
> EXTRA_IMAGE_FEATURES += “ssh-server-openssl” in local.conf
>
> or
>
> IMAGE_FEATURES += "ssh-server-openssl"
>
> via a bbappend in your layer if you hinging on to same image recipe 
> otherwise if you have your own image recipe
> then add it to that.
>
>>
>> Thanks, Clay Montgomery
>>
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>
Raj,

   Thanks for the help, but that does not seem to provide the required 
sftp server that is supposed to be here:
     /usr/lib/openssh/sftp-server

I found that I have to add all 3 of these in the 
CORE_IMAGE_EXTRA_INSTALL list to get both scp and sftp clients and servers:
     openssh
     openssh-sftp
     openssh-sftp-server

Thanks, Clay


--------------090209000609050906020602
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/13/2015 12:57 PM, Khem Raj wrote:<br>
    </div>
    <blockquote
      cite="mid:30C0DEC6-AB2D-406C-ACC3-CEAAE0DE796C@gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <br class="">
      <div>
        <blockquote type="cite" class="">
          <div class="">On Dec 13, 2015, at 10:35 AM, Clay D. Montgomery
            &lt;<a moz-do-not-send="true"
              href="mailto:clay@montgomery1.com" class="">clay@montgomery1.com</a>&gt;
            wrote:</div>
          <br class="Apple-interchange-newline">
          <div class="">
            <meta http-equiv="content-type" content="text/html;
              charset=utf-8" class="">
            <div bgcolor="#FFFFFF" text="#000000" class=""> I'm trying
              to understand which of these OpenSSH package options I
              should use with the CORE_IMAGE_EXTRA_INSTALL option:<br
                class="">
              <br class="">
                  openssh<br class="">
                  openssh-sshd<br class="">
                  openssh-sftp<br class="">
                  openssh-sftp-server<br class="">
              <br class="">
              I want OpenSSH server functionality that supports both the
              scp and sftp protocols. I first tried just 'openssh' and
              found that it provides scp but not sftp.<br class="">
              So then I tried the latter 3 options and I got sftp, but
              not scp. Do I really need all 4 of these to get scp and
              sftp?<br class="">
              <br class="">
              I checked this recipe guide and found it lists yet another
              package named '<a moz-do-not-send="true"
                href="http://recipes.yoctoproject.org/rrs/recipedetail/122/"
                class="">packagegroup-core-ssh-openssh</a>' but it says
              nothing about sftp.<br class="">
                  <a moz-do-not-send="true"
                class="moz-txt-link-freetext"
                href="http://recipes.yoctoproject.org/rrs/recipes/2.1/M2/">http://recipes.yoctoproject.org/rrs/recipes/2.1/M2/</a><br
                class="">
              <br class="">
              I would appreciate some advise.<br class="">
            </div>
          </div>
        </blockquote>
        <div><br class="">
        </div>
        <div>you can just do </div>
        <div><br class="">
        </div>
        <div>EXTRA_IMAGE_FEATURES += “ssh-server-openssl” in local.conf </div>
        <div><br class="">
        </div>
        <div>or</div>
        <div><br class="">
        </div>
        <div>IMAGE_FEATURES += "ssh-server-openssl"</div>
        <div><br class="">
        </div>
        <div>via a bbappend in your layer if you hinging on to same
          image recipe otherwise if you have your own image recipe</div>
        <div>then add it to that.</div>
        <br class="">
        <blockquote type="cite" class="">
          <div class="">
            <div bgcolor="#FFFFFF" text="#000000" class=""> <br
                class="">
              Thanks, Clay Montgomery<br class="">
              <br class="">
              <br class="">
            </div>
            -- <br class="">
            _______________________________________________<br class="">
            yocto mailing list<br class="">
            <a moz-do-not-send="true"
              href="mailto:yocto@yoctoproject.org" class="">yocto@yoctoproject.org</a><br
              class="">
            <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br class="">
          </div>
        </blockquote>
      </div>
      <br class="">
    </blockquote>
    Raj,<br>
    <br>
      Thanks for the help, but that does not seem to provide the
    required sftp server that is supposed to be here:<br>
        /usr/lib/openssh/sftp-server<br>
    <br>
    I found that I have to add all 3 of these in the
    CORE_IMAGE_EXTRA_INSTALL list to get both scp and sftp clients and
    servers:<br>
        openssh<br>
        openssh-sftp<br>
        openssh-sftp-server<br>
    <br>
    Thanks, Clay<br>
    <br>
  </body>
</html>

--------------090209000609050906020602--
