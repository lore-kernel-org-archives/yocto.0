Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE41FE00DDC; Wed, 15 May 2019 12:31:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BB79E00D5F
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 12:31:38 -0700 (PDT)
Received: by mail-pf1-f176.google.com with SMTP id g9so463396pfo.11
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 12:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=nZ5+RUI4EO5b4oAqHZDKVMVPpXTSn+Jp8fPkCZSeC5E=;
	b=Jh4QQR5cxNbY6a3KeMN3LW/pbWenLZ9hLukPld5m+qzNbcOjODjAU93Sr+VRPenLj7
	iQsJtFgQE0SkyLwIGjhBDQCkMSMHW761+wSxraHuBjMivmwzKv9mMBxvq0pwrMWv05xP
	lGggI31OVXjgUw75GaUDm9qr3RF/cLS3Mws/ixg567rW6UMnl+tL9VUbOWvqwMyqI46f
	c9gOCt3s8yw6P8ad4GBJ2XMcg2KxjCHqd2xTNvm9acDSA/hxDsj6Gyo2AO6IE9J3jTVK
	cDI6d2THc7jw24/kQQExS9TTy5hE6/ovyypKk18nU/Y0XLBqqW3GTcBQwxIrdHOCpflN
	ldAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=nZ5+RUI4EO5b4oAqHZDKVMVPpXTSn+Jp8fPkCZSeC5E=;
	b=H1GWIuiFaq75YFu9NsdbDRBjoHx/Q/6LlXFzhXCwvTeP2qvOf5SNNmLQdfAXN0tTUj
	+79CogXsjde+hTuDdmaF22bYUBcoHb/H58LlXtMAW4Urza8/Qb08u9J5hyUTgpJIUIrw
	0+8wGxEVIvQwYsgM5ArhNnd8hss4hBnvMJgP2CJZvOJnQR83paDwVDgpVCKcZftRgYqH
	nkSHnc0cSpo2U4uNIPktB8AcGvhJR/hsVr13Ei6Ls0iwRr8JE8oTIgF4vTMVYYnke22K
	6yXNH2u2WJnOAosoI20wrX9jv2Ao7FsZ/gHecytoig9fZOnaWC8bAAeZYBNrMGDQn0C9
	EYWw==
X-Gm-Message-State: APjAAAXx7XIlQ8ft9aiRHy9sFgX3xzVuatAJRSjUiKM7YXjF0tnMHXsj
	6Cros9YopCze6wChXeNRLM8DeAThHEs=
X-Google-Smtp-Source: APXvYqw1JXdaXLBkPpG2OQ2FPuYWfGI3zIcj3ToKVp5MUkidO3RRUGBQTOLSpR9OCK5pA5NLvsvdnw==
X-Received: by 2002:a62:585:: with SMTP id 127mr29183031pff.231.1557948697100; 
	Wed, 15 May 2019 12:31:37 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	x19sm3596086pga.4.2019.05.15.12.31.35
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 May 2019 12:31:35 -0700 (PDT)
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <2086bca8f57442acac5ba11c3d2712f1@sakuraus.com>
	<3d82053c-8db7-15af-34b8-18657749e026@ibeeto.com>
	<59388987f9de418abb8598790a3d3e7f@sakuraus.com>
	<04dbfa63-d5a5-1aff-9d4a-87cbd9f44b5c@ibeeto.com>
	<20cf7cd05ce54a439d05109439572db8@sakuraus.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <2503a68b-2283-cac8-1e5d-11d0885598a7@ibeeto.com>
Date: Wed, 15 May 2019 12:31:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20cf7cd05ce54a439d05109439572db8@sakuraus.com>
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
X-List-Received-Date: Wed, 15 May 2019 19:31:39 -0000
Content-Type: multipart/alternative;
	boundary="------------D3EAE2B77216F41578497025"
Content-Language: en-US

--------------D3EAE2B77216F41578497025
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

The ! for the password in /etc/shadow indicates that the account is 
disabled:

sakura:!:18031:0:99999:7:::


Either there is something wrong with the password generation or it gets 
disabled by something else. Maybe it's worth trying with a plain image 
without Boot2Qt or anything else.


:rjs



On 5/15/19 11:46 AM, Greg Wilson-Lindberg wrote:
>
> Hi Rudolf,
>
> 1st, yes I inherit extrausers. Attached are the passwd & shadow files.
>
>
> It shouldn't make any difference, but I'm building this for an RPi3 
> using the Qt Boot2Qt version of the Yocto environment, distro 2.5.3.
>
>
> Greg
>
> ------------------------------------------------------------------------
> *From:* Rudolf J Streif <rudolf.streif@ibeeto.com>
> *Sent:* Wednesday, May 15, 2019 11:26 AM
> *To:* Greg Wilson-Lindberg; Yocto list discussion
> *Subject:* Re: [yocto] problem adding a user
>
> Hi Greg,
>
>
> > I've also tried both the back-quote and the single-quote, no difference.
>
>
> Help me to understand this. the back-quotes are the right ones. If you 
> use the single ones your password in the /etc/shadow ends up being 
> 'openssl passwd test' (without the quotes), unless the build fails 
> because of a parsing error (I have not tried it). Silly question, you 
> did inherit extrausers class?
>
>
> Can you post your /etc/passwd and /etc/shadow
>
>
> I am surprised that this does not work with your setup. I have been 
> doing this a gazillion times always with success.
>
>
> :rjs
>
>
>
>
> On 5/15/19 11:03 AM, Greg Wilson-Lindberg wrote:
>>
>> Hi Rudolf,
>>
>> Thanks for the reply, and the information on how openssl works.
>>
>>
>> I'm trying to create a user with the same group name so the code that 
>> I'm using reduces to:
>>
>> EXTRA_USERS_PARAMS = "\
>>      useradd -p `openssl passwd test` sakura; \
>>      usermod -a -G sudo ${SAKURA_USER}; \
>>      "
>> I also, as you can see, removed the macros to eliminate as much 
>> confusion as possible.
>>
>>
>> I still can't login in using the password 'test'.
>>
>>
>> I've also tried both the back-quote and the single-quote, no difference.
>>
>> Regards,
>>
>>
>> Greg
>>
>> ------------------------------------------------------------------------
>> *From:* Rudolf J Streif <rudolf.streif@ibeeto.com>
>> *Sent:* Wednesday, May 15, 2019 10:07:47 AM
>> *To:* Greg Wilson-Lindberg; Yocto list discussion
>> *Subject:* Re: [yocto] problem adding a user
>> Hi Greg,
>>
>> Well, I suppose I wrote the book you are referring to...
>>
>>
>> Using
>>
>> useradd -p PASSWORD USER
>>
>> takes the password hash for PASSWORD hence the use of openssl in:
>>
>> useadd -p `openssl passwd PASSWORD` USER
>>
>> openssl password creates the password hash using the original crypt hash
>> algorithm if no other options are specified. e.g.
>>
>> $ openssl passwd hello
>> 6hEsTksgRkeiI
>>
>> With this the first two characters of the output is the salt and the
>> rest is the password hash. If you want openssl to create the same result
>> again:
>>
>> $ openssl passwd -salt "6h" hello
>> 6hEsTksgRkeiI
>>
>> You can use newer algorithms like MD5 based BSD password algorithm 1:
>>
>> $ openssl passwd -1 hello
>> $1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1
>>
>> $1 : password algorithm 1
>> $4Mu8Fcs. : salt
>> $eIKgPP7RCYrb3lFZjhADA1 : password hash
>>
>>
>> If you log into the system you have to use the clear password. The
>> system reads the salt, creates the password hash and compares the 
>> results.
>>
>>
>> :rjs
>>
>>
>> On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:
>> > I'm trying to use the example in "Embedded Linux Systems with the 
>> Yocto Project" to add a user to my Yocto build. In the book the 
>> sample code:
>> >
>> >     useradd -p `openssl passwd ${DEV_PASSWORD}` developer; \
>> >
>> > uses openssl to generate the encrypted password string to pass to 
>> useradd. I have never been able to get this to work. When I run the 
>> openssl
>> > command on the cmd line I get a different value every time, this 
>> seems wrong, How can the password code compare against it if every encode
>> > produces a different value?
>> >
>> > I am getting the user added to the system, the home directory shows 
>> up and the user is in the passwd and group files. I just can't login 
>> to the
>> > account.
>> >
>> > I've obviously got something confused, any help would be appreciated.
>> >
>> > Greg Wilson-Lindberg
>> >
>>
>> -- 
>> -----
>> Rudolf J Streif
>> CEO/CTO ibeeto
>> +1.855.442.3396 x700
>>
> -- 
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3396 x700

-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


--------------D3EAE2B77216F41578497025
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>The ! for the password in /etc/shadow indicates that the account
      is disabled:</p>
    <p>sakura:!:18031:0:99999:7:::<br>
    </p>
    <p><br>
    </p>
    <p>Either there is something wrong with the password generation or
      it gets disabled by something else. Maybe it's worth trying with a
      plain image without Boot2Qt or anything else.</p>
    <p><br>
    </p>
    <p>:rjs<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/15/19 11:46 AM, Greg
      Wilson-Lindberg wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20cf7cd05ce54a439d05109439572db8@sakuraus.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif;">
        <p>Hi Rudolf,</p>
        <p>1st, yes I inherit extrausers. Attached are the passwd &amp;
          shadow files.</p>
        <p><br>
        </p>
        <p>It shouldn't make any difference, but I'm building this for
          an RPi3 using the Qt Boot2Qt version of the Yocto environment,
          distro 2.5.3.</p>
        <p><br>
        </p>
        Greg<br>
        <br>
        <div style="color: rgb(0, 0, 0);">
          <hr tabindex="-1" style="display:inline-block; width:98%">
          <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
              face="Calibri, sans-serif" color="#000000"><b>From:</b>
              Rudolf J Streif <a class="moz-txt-link-rfc2396E" href="mailto:rudolf.streif@ibeeto.com">&lt;rudolf.streif@ibeeto.com&gt;</a><br>
              <b>Sent:</b> Wednesday, May 15, 2019 11:26 AM<br>
              <b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
              <b>Subject:</b> Re: [yocto] problem adding a user</font>
            <div> </div>
          </div>
          <div>
            <p>Hi Greg,</p>
            <p><br>
            </p>
            <p>&gt; I've also tried both the back-quote and the
              single-quote, no difference.</p>
            <p><br>
            </p>
            <p>Help me to understand this. the back-quotes are the right
              ones. If you use the single ones your password in the
              /etc/shadow ends up being 'openssl passwd test' (without
              the quotes), unless the build fails because of a parsing
              error (I have not tried it). Silly question, you did
              inherit extrausers class?</p>
            <p><br>
            </p>
            <p>Can you post your /etc/passwd and /etc/shadow</p>
            <p><br>
            </p>
            <p>I am surprised that this does not work with your setup. I
              have been doing this a gazillion times always with
              success.</p>
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
            <blockquote type="cite">
              <meta name="Generator" content="Microsoft Exchange Server">
              <meta content="text/html; charset=UTF-8">
              <div dir="ltr">
                <div id="x_divtagdefaultwrapper" style="font-size:12pt;
                  color:#000000;
                  font-family:Calibri,Arial,Helvetica,sans-serif">
                  <p>Hi Rudolf,</p>
                  <p>Thanks for the reply, and the information on how
                    openssl works.</p>
                  <p><br>
                  </p>
                  <p>I'm trying to create a user with the same group
                    name so the code that I'm using reduces to:</p>
                  <div style="color:#000000; background-color:#ffffff;
                    font-style:normal; font-weight:normal;
                    text-decoration:none">
                    <pre>EXTRA_USERS_PARAMS = "\
    useradd -p `openssl passwd test` sakura; \
    usermod -a -G sudo ${SAKURA_USER}; \
    "
</pre>
                  </div>
                  I also, as you can see, removed the macros to
                  eliminate as much confusion as possible.
                  <p><br>
                  </p>
                  <p>I still can't login in using the password<span
                      style=""> 'test'</span>.</p>
                  <p><br>
                  </p>
                  <p>I've also tried both the back-quote and the
                    single-quote, no difference.</p>
                  <p>Regards,</p>
                  <p><br>
                  </p>
                  <p>Greg</p>
                </div>
                <hr tabindex="-1" style="display:inline-block;
                  width:98%">
                <div id="x_divRplyFwdMsg" dir="ltr"><font
                    style="font-size:11pt" face="Calibri, sans-serif"
                    color="#000000"><b>From:</b> Rudolf J Streif
                    <a class="moz-txt-link-rfc2396E"
                      href="mailto:rudolf.streif@ibeeto.com"
                      moz-do-not-send="true">&lt;rudolf.streif@ibeeto.com&gt;</a><br>
                    <b>Sent:</b> Wednesday, May 15, 2019 10:07:47 AM<br>
                    <b>To:</b> Greg Wilson-Lindberg; Yocto list
                    discussion<br>
                    <b>Subject:</b> Re: [yocto] problem adding a user</font>
                  <div> </div>
                </div>
              </div>
              <font size="2"><span style="font-size:10pt">
                  <div class="PlainText">Hi Greg,<br>
                    <br>
                    Well, I suppose I wrote the book you are referring
                    to...<br>
                    <br>
                    <br>
                    Using<br>
                    <br>
                    useradd -p PASSWORD USER<br>
                    <br>
                    takes the password hash for PASSWORD hence the use
                    of openssl in:<br>
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
                    With this the first two characters of the output is
                    the salt and the <br>
                    rest is the password hash. If you want openssl to
                    create the same result <br>
                    again:<br>
                    <br>
                    $ openssl passwd -salt "6h" hello<br>
                    6hEsTksgRkeiI<br>
                    <br>
                    You can use newer algorithms like MD5 based BSD
                    password algorithm 1:<br>
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
                    &gt; I'm trying to use the example in "Embedded
                    Linux Systems with the Yocto Project" to add a user
                    to my Yocto build. In the book the sample code:<br>
                    &gt;<br>
                    &gt;     useradd -p `openssl passwd ${DEV_PASSWORD}`
                    developer; \<br>
                    &gt;<br>
                    &gt; uses openssl to generate the encrypted password
                    string to pass to useradd. I have never been able to
                    get this to work. When I run the openssl<br>
                    &gt; command on the cmd line I get a different value
                    every time, this seems wrong, How can the password
                    code compare against it if every encode<br>
                    &gt; produces a different value?<br>
                    &gt;<br>
                    &gt; I am getting the user added to the system, the
                    home directory shows up and the user is in the
                    passwd and group files. I just can't login to the<br>
                    &gt; account.<br>
                    &gt;<br>
                    &gt; I've obviously got something confused, any help
                    would be appreciated.<br>
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
                </span></font></blockquote>
            <pre class="moz-signature" cols="72">-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
          </div>
        </div>
      </div>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
  </body>
</html>

--------------D3EAE2B77216F41578497025--
