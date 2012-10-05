Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EDF8E0049B
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 02:54:25 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-113-77.range81-153.btcentralplus.com
	[81.153.113.77]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id DD6AE99A4
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 10:54:24 +0100 (BST)
Message-ID: <506EAE4B.9070105@r-finger.com>
Date: Fri, 05 Oct 2012 10:54:19 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CC9226B2.365%PatrickTurley@gamestop.com>
	<CC922B79.368%PatrickTurley@gamestop.com>
	<CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
	<6796989A-D845-4726-B47B-64B82F380444@gamestop.com>
	<CA+gsK-p5gt0FuN4XbifdSjPv5pcnF6u=5bcrWAw9Ayd9WpUTYw@mail.gmail.com>
	<1A527469-CEF5-434E-8604-540899C8BA04@gamestop.com>
	<CA+gsK-qzq5dK4QwOq1kw1U8tNbhDt-UZsRha-_ZKu0Kw8AWFAg@mail.gmail.com>
	<1349430416.15658.10.camel@ted>
In-Reply-To: <1349430416.15658.10.camel@ted>
Subject: Re: The BitBake equivalent of "Hello, World!"
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
X-List-Received-Date: Fri, 05 Oct 2012 09:54:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

>> Tasks must be Python functions. 
>>         
>>
> No, they can be shell functions too.

Probably worth adding that if you are doing an _append() on a task
function, you have to match the original function type. E.g., if you
want to append a shell snippet to a python task function, you need to do
something like this (from the eglibc recipe):

do_unpack_append() {
    bb.build.exec_func('do_move_ports', d)
}

do_move_ports() {
        if test -d ${WORKDIR}/${EGLIBC_BRANCH}/ports ; then
	    rm -rf ${S}/ports
	    mv ${WORKDIR}/${EGLIBC_BRANCH}/ports ${S}/
	fi
}

Tomas

