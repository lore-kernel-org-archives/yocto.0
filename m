Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48AD1E00C38; Sun, 13 Jan 2019 13:58:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,TEQF_USR_MSGID_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [79.136.2.40 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.0 TEQF_USR_MSGID_HEX To and from user nearly same + unusual message
	ID
X-Greylist: delayed 326 seconds by postgrey-1.32 at yocto-www;
	Sun, 13 Jan 2019 13:58:38 PST
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97794E008CE
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 13:58:38 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id B33653F6B7;
	Sun, 13 Jan 2019 22:53:11 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
	by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id TOp1thu8alS6; Sun, 13 Jan 2019 22:53:10 +0100 (CET)
Received: from [10.175.196.210] (h-169-62.A454.priv.bahnhof.se [37.123.169.62])
	(Authenticated sender: mb782575)
	by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 956533F5D7;
	Sun, 13 Jan 2019 22:53:10 +0100 (CET)
To: Yocto list discussion <yocto@yoctoproject.org>
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <09d6ac15-7dbe-3ffa-3f9c-381746ec7433@emagii.com>
Date: Sun, 13 Jan 2019 22:53:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
Subject: bitbake: DataSmart.expandWithRefs causing exception when handed "${@...}"
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
X-List-Received-Date: Sun, 13 Jan 2019 21:58:40 -0000
Content-Type: multipart/alternative;
	boundary="------------20DD0F57204C90100556FD27"
Content-Language: sv

--------------20DD0F57204C90100556FD27
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I am trying to add a new image class "SWU" in "sumo" for a "software 
update image".

As a result:

do_sdk_depends[depends] = '${@get_ext_sdk_depends(d)} meta-extsdk-toolchain:do_populate_sysroot'

When data_smart.py works on this, it will call

DataSmart.expandWithRefs(self, s, varname)

s        = '${@get_ext_sdk_depends(d)} meta-extsdk-toolchain:do_populate_sysroot'
varname  = 'do_sdk_depends[depends]'

I will get an exception in this statement:

         while s.find('${') != -1:
             olds = s
             try:
                s = __expand_var_regexp__.sub(varparse.var_sub, s)

The definition of __expand_var_regexp__ is:
   __expand_var_regexp__ = re.compile(r"\${[^{}@\n\t :]+}")

That is, it is looking for the string "${<X>}"
but <X> may not contains anything in [{}@\n\t :]

since the "variable" in "s" is actually a call to get_ext_sdk_depends,
and thus contains a '@' character it is not matched.

The build aborts with an exception.

I am not sure, if '${@get_ext_sdk_depends(d)}' should be expanded before
DataSmart,expandWithRefs, or if expandWithRefs needs to be extended
to handle the case where the variable is a "call".

This is blocking us from upgrading from pyro to sumo.

Any ideas on a solution?

BR
Ulf Samuelsson


--------------20DD0F57204C90100556FD27
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I am trying to add a new image class "SWU" in "sumo" for a
      "software update image".</p>
    <p>As a result:</p>
    <pre class="moz-quote-pre" wrap="">do_sdk_depends[depends] = '${@get_ext_sdk_depends(d)} meta-extsdk-toolchain:do_populate_sysroot'

When data_smart.py works on this, it will call 

DataSmart.expandWithRefs(self, s, varname)</pre>
    <pre class="moz-quote-pre" wrap="">s        = '${@get_ext_sdk_depends(d)} meta-extsdk-toolchain:do_populate_sysroot'
varname  = 'do_sdk_depends[depends]'

I will get an exception in this statement:

        while s.find('${') != -1:
            olds = s
            try:
               <font color="#ff0000"> s = __expand_var_regexp__.sub(varparse.var_sub, s)</font>

The definition of __expand_var_regexp__ is:
  __expand_var_regexp__ = re.compile(r"\${[^{}@\n\t :]+}")

That is, it is looking for the string "${&lt;X&gt;}"
but &lt;X&gt; may not contains anything in [{}@\n\t :]

since the "variable" in "s" is actually a call to get_ext_sdk_depends,
and thus contains a '@' character it is not matched.

The build aborts with an exception.

I am not sure, if '${@get_ext_sdk_depends(d)}' should be expanded before
DataSmart,expandWithRefs, or if expandWithRefs needs to be extended
to handle the case where the variable is a "call".

This is blocking us from upgrading from pyro to sumo.

Any ideas on a solution?

BR
Ulf Samuelsson

</pre>
  </body>
</html>

--------------20DD0F57204C90100556FD27--
