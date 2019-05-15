Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D0FDE00DDC; Wed, 15 May 2019 11:26:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEB1BE0096F
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 11:26:44 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id c13so208165pgt.1
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 11:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=E57l5hT9gz4AqBCkhdafMLN0N4W/WKSzQIbDfk5VQHA=;
	b=r2UA0PIOzh+mjW4fPRYE4quscPpdK3E5nSACe+0m4SiJjl7/amxU7q7PYDlh7Ari0z
	tOGXoF85kztlf1ewslT0D1kH2uKC6BaQX0/1DFa28Y0qBxD1cCArQk4EyoNtkM3kcFNQ
	w51Wt2w/LlT7tK2PEZieoOlJ3y9rNqmMGxDVmrDHdpgyyyVr/hL50+3osVuq/qC9BfT4
	uVk+N2fkj51FfHA6miVxY3YOhoWxNwYFeTCB9d24yAoQlYsA6JUuqwUCrzqTjCxGJYKm
	LEhqtMymAivqC5+k0Exgr25okjSVnNdVZ2WzA1HpweagK0VJS5R42otka071R7YdNNop
	7UfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=E57l5hT9gz4AqBCkhdafMLN0N4W/WKSzQIbDfk5VQHA=;
	b=YgvPeelwt0/q4Y0GeM2mb3QvloIyb465S3OwnMcGtbyrX+vSZnKPikW8Ul7R6SE63Q
	SlwL3T84mRl0vwXikq+TEK0MaC4dez7SiqVWwd6VQ7rQAbzOuWiPy8IA9puLrzXlaawp
	b9W+mUdJ0hiayMuyAypqbbAgEcJbX6m7VY94W5r/Vg8xgHRY4KYEth+Zl1c4qKjaMvCz
	oMtxF8n38NSs1/ZIoY/0yf1PB1yRbv0qSNx4CG0UpiaxR1PjUtgMeXaxRS3t779C9V9o
	U/sCUWNI6IwJvuTKfBue2UeKzYL0J8p3AxwLJAD51B7g4yD8We/4+1HEK9tO/1DvXAnj
	teMQ==
X-Gm-Message-State: APjAAAUiENMjQvNzUfZ/XzXlgck/6jADdNU4qkfSSv88SoHO0ynjzpU7
	FqEOnQ4TqntVa8aYLaxKEAkDSjjpYfo=
X-Google-Smtp-Source: APXvYqxFCW47sOjIK8rrE/WjeklhQCExNghsjoGKfg9tcCMfBBnbA1WIDZwOd9sskXME57XZjIXkMw==
X-Received: by 2002:a65:56c3:: with SMTP id w3mr43119344pgs.232.1557944803505; 
	Wed, 15 May 2019 11:26:43 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	a6sm3261770pgd.67.2019.05.15.11.26.41
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 May 2019 11:26:41 -0700 (PDT)
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <2086bca8f57442acac5ba11c3d2712f1@sakuraus.com>
	<3d82053c-8db7-15af-34b8-18657749e026@ibeeto.com>
	<59388987f9de418abb8598790a3d3e7f@sakuraus.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <04dbfa63-d5a5-1aff-9d4a-87cbd9f44b5c@ibeeto.com>
Date: Wed, 15 May 2019 11:26:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <59388987f9de418abb8598790a3d3e7f@sakuraus.com>
Subject: Re: problem adding a user
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
X-List-Received-Date: Wed, 15 May 2019 18:26:46 -0000
Content-Type: multipart/alternative;
	boundary="------------6D06A3778A72DE94C2D6D490"
Content-Language: en-US

--------------6D06A3778A72DE94C2D6D490
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Greg,


 > I've also tried both the back-quote and the single-quote, no difference.


Help me to understand this. the back-quotes are the right ones. If you 
use the single ones your password in the /etc/shadow ends up being 
'openssl passwd test' (without the quotes), unless the build fails 
because of a parsing error (I have not tried it). Silly question, you 
did inherit extrausers class?


Can you post your /etc/passwd and /etc/shadow


I am surprised that this does not work with your setup. I have been 
doing this a gazillion times always with success.


:rjs




On 5/15/19 11:03 AM, Greg Wilson-Lindberg wrote:
>
> Hi Rudolf,
>
> Thanks for the reply, and the information on how openssl works.
>
>
> I'm trying to create a user with the same group name so the code that 
> I'm using reduces to:
>
> EXTRA_USERS_PARAMS = "\
>      useradd -p `openssl passwd test` sakura; \
>      usermod -a -G sudo ${SAKURA_USER}; \
>      "
> I also, as you can see, removed the macros to eliminate as much 
> confusion as possible.
>
>
> I still can't login in using the password 'test'.
>
>
> I've also tried both the back-quote and the single-quote, no difference.
>
> Regards,
>
>
> Greg
>
> ------------------------------------------------------------------------
> *From:* Rudolf J Streif <rudolf.streif@ibeeto.com>
> *Sent:* Wednesday, May 15, 2019 10:07:47 AM
> *To:* Greg Wilson-Lindberg; Yocto list discussion
> *Subject:* Re: [yocto] problem adding a user
> Hi Greg,
>
> Well, I suppose I wrote the book you are referring to...
>
>
> Using
>
> useradd -p PASSWORD USER
>
> takes the password hash for PASSWORD hence the use of openssl in:
>
> useadd -p `openssl passwd PASSWORD` USER
>
> openssl password creates the password hash using the original crypt hash
> algorithm if no other options are specified. e.g.
>
> $ openssl passwd hello
> 6hEsTksgRkeiI
>
> With this the first two characters of the output is the salt and the
> rest is the password hash. If you want openssl to create the same result
> again:
>
> $ openssl passwd -salt "6h" hello
> 6hEsTksgRkeiI
>
> You can use newer algorithms like MD5 based BSD password algorithm 1:
>
> $ openssl passwd -1 hello
> $1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1
>
> $1 : password algorithm 1
> $4Mu8Fcs. : salt
> $eIKgPP7RCYrb3lFZjhADA1 : password hash
>
>
> If you log into the system you have to use the clear password. The
> system reads the salt, creates the password hash and compares the results.
>
>
> :rjs
>
>
> On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:
> > I'm trying to use the example in "Embedded Linux Systems with the 
> Yocto Project" to add a user to my Yocto build. In the book the sample 
> code:
> >
> >     useradd -p `openssl passwd ${DEV_PASSWORD}` developer; \
> >
> > uses openssl to generate the encrypted password string to pass to 
> useradd. I have never been able to get this to work. When I run the 
> openssl
> > command on the cmd line I get a different value every time, this 
> seems wrong, How can the password code compare against it if every encode
> > produces a different value?
> >
> > I am getting the user added to the system, the home directory shows 
> up and the user is in the passwd and group files. I just can't login 
> to the
> > account.
> >
> > I've obviously got something confused, any help would be appreciated.
> >
> > Greg Wilson-Lindberg
> >
>
> -- 
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3396 x700
>
-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


--------------6D06A3778A72DE94C2D6D490
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Greg,</p>
    <p><br>
    </p>
    <p>&gt; I've also tried both the back-quote and the single-quote, no
      difference.</p>
    <p><br>
    </p>
    <p>Help me to understand this. the back-quotes are the right ones.
      If you use the single ones your password in the /etc/shadow ends
      up being 'openssl passwd test' (without the quotes), unless the
      build fails because of a parsing error (I have not tried it).
      Silly question, you did inherit extrausers class?</p>
    <p><br>
    </p>
    <p>Can you post your /etc/passwd and /etc/shadow</p>
    <p><br>
    </p>
    <p>I am surprised that this does not work with your setup. I have
      been doing this a gazillion times always with success.</p>
    <p><br>
    </p>
    <p>:rjs<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/15/19 11:03 AM, Greg
      Wilson-Lindberg wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:59388987f9de418abb8598790a3d3e7f@sakuraus.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Exchange Server">
      <!-- converted from text -->
      <style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left: #800000 2px solid; } --></style>
      <meta content="text/html; charset=UTF-8">
      <style type="text/css" style="">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
      <div dir="ltr">
        <div id="x_divtagdefaultwrapper" style="font-size:12pt;
          color:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
          <p>Hi Rudolf,</p>
          <p>Thanks for the reply, and the information on how openssl
            works.</p>
          <p><br>
          </p>
          <p>I'm trying to create a user with the same group name so the
            code that I'm using reduces to:</p>
          <div style="color:#000000; background-color:#ffffff;
            font-style:normal; font-weight:normal; text-decoration:none">
            <pre>EXTRA_USERS_PARAMS = "\
    useradd -p `openssl passwd test` sakura; \
    usermod -a -G sudo ${SAKURA_USER}; \
    "
</pre>
          </div>
          I also, as you can see, removed the macros to eliminate as
          much confusion as possible.
          <p><br>
          </p>
          <p>I still can't login in using the password<span
              style="font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple
              Color Emoji&quot;,&quot;Segoe UI
              Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
              Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;
              font-size:16px"> 'test'</span>.</p>
          <p><br>
          </p>
          <p>I've also tried both the back-quote and the single-quote,
            no difference.</p>
          <p>Regards,</p>
          <p><br>
          </p>
          <p>Greg</p>
        </div>
        <hr tabindex="-1" style="display:inline-block; width:98%">
        <div id="x_divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
            face="Calibri, sans-serif" color="#000000"><b>From:</b>
            Rudolf J Streif <a class="moz-txt-link-rfc2396E" href="mailto:rudolf.streif@ibeeto.com">&lt;rudolf.streif@ibeeto.com&gt;</a><br>
            <b>Sent:</b> Wednesday, May 15, 2019 10:07:47 AM<br>
            <b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
            <b>Subject:</b> Re: [yocto] problem adding a user</font>
          <div> </div>
        </div>
      </div>
      <font size="2"><span style="font-size:10pt;">
          <div class="PlainText">Hi Greg,<br>
            <br>
            Well, I suppose I wrote the book you are referring to...<br>
            <br>
            <br>
            Using<br>
            <br>
            useradd -p PASSWORD USER<br>
            <br>
            takes the password hash for PASSWORD hence the use of
            openssl in:<br>
            <br>
            useadd -p `openssl passwd PASSWORD` USER<br>
            <br>
            openssl password creates the password hash using the
            original crypt hash <br>
            algorithm if no other options are specified. e.g.<br>
            <br>
            $ openssl passwd hello<br>
            6hEsTksgRkeiI<br>
            <br>
            With this the first two characters of the output is the salt
            and the <br>
            rest is the password hash. If you want openssl to create the
            same result <br>
            again:<br>
            <br>
            $ openssl passwd -salt "6h" hello<br>
            6hEsTksgRkeiI<br>
            <br>
            You can use newer algorithms like MD5 based BSD password
            algorithm 1:<br>
            <br>
            $ openssl passwd -1 hello<br>
            $1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1<br>
            <br>
            $1 : password algorithm 1<br>
            $4Mu8Fcs. : salt<br>
            $eIKgPP7RCYrb3lFZjhADA1 : password hash<br>
            <br>
            <br>
            If you log into the system you have to use the clear
            password. The <br>
            system reads the salt, creates the password hash and
            compares the results.<br>
            <br>
            <br>
            :rjs<br>
            <br>
            <br>
            On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:<br>
            &gt; I'm trying to use the example in "Embedded Linux
            Systems with the Yocto Project" to add a user to my Yocto
            build. In the book the sample code:<br>
            &gt;<br>
            &gt;     useradd -p `openssl passwd ${DEV_PASSWORD}`
            developer; \<br>
            &gt;<br>
            &gt; uses openssl to generate the encrypted password string
            to pass to useradd. I have never been able to get this to
            work. When I run the openssl<br>
            &gt; command on the cmd line I get a different value every
            time, this seems wrong, How can the password code compare
            against it if every encode<br>
            &gt; produces a different value?<br>
            &gt;<br>
            &gt; I am getting the user added to the system, the home
            directory shows up and the user is in the passwd and group
            files. I just can't login to the<br>
            &gt; account.<br>
            &gt;<br>
            &gt; I've obviously got something confused, any help would
            be appreciated.<br>
            &gt;<br>
            &gt; Greg Wilson-Lindberg<br>
            &gt;   <br>
            <br>
            -- <br>
            -----<br>
            Rudolf J Streif<br>
            CEO/CTO ibeeto<br>
            +1.855.442.3396 x700<br>
            <br>
          </div>
        </span></font>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
  </body>
</html>

--------------6D06A3778A72DE94C2D6D490--
