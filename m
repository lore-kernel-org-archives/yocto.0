Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70613E00B3D; Thu, 24 Aug 2017 15:36:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EA30E0090A
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 15:36:31 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Aug 2017 15:36:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,423,1498546800"; d="scan'208";a="1210125239"
Received: from beecheek-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.144.140])
	by fmsmga002.fm.intel.com with ESMTP; 24 Aug 2017 15:36:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diana Thayer <garbados@gmail.com>
Date: Fri, 25 Aug 2017 10:36:25 +1200
Message-ID: <20600395.0cSnv16Jry@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1503536318-18791-1-git-send-email-garbados@gmail.com>
References: <1503536318-18791-1-git-send-email-garbados@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH v2] Asynchronous email notifications, task execution
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
X-List-Received-Date: Thu, 24 Aug 2017 22:36:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Diana,

On Thursday, 24 August 2017 12:58:38 PM NZST Diana Thayer wrote:
> This patch adds asynchronous task execution using a Celery backend
> and RabbitMQ task queue.
> 
> It updates the README to reflect the installation and configuration
> of a basic RabbitMQ setup, adds a 'tasks.py' file to contain task
> definitions, updates the 'edit_layer_view' function to send
> emails to administrators about new and updated layers asynchronously,
> and modifies the 'settings.py' to include a default configuration
> for a RabbitMQ connection.

This summarises what the patch does, which is useful, but it misses out the
most important bit - why we're making this change, i.e. to allow layer
submission process to proceed even in the event that sending the notification
email fails, and establishing an asynchronous execution mechanism that we can
use in future e.g. for triggering parse operations from the web UI. If you
could also include a reference to the bug in the form [YOCTO #11197] that
would be great.

Please also add your Signed-off-by which is missing.

One other comment below.

>....
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -19,7 +19,6 @@ from layerindex.forms import EditLayerForm, LayerMaintainerFormSet, EditNoteForm
>  from django.db import transaction
>  from django.contrib.auth.models import User, Permission
>  from django.db.models import Q, Count, Sum
> -from django.core.mail import EmailMessage
>  from django.template.loader import get_template
>  from django.template import Context
>  from django.utils.decorators import method_decorator
> @@ -28,6 +27,7 @@ from django.contrib import messages
>  from reversion.models import Revision
>  from . import utils
>  from . import simplesearch
> +from . import tasks
>  import settings
>  from django.dispatch import receiver
>  import reversion
> @@ -163,7 +163,7 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
>                      # Send email
>                      plaintext = get_template('layerindex/submitemail.txt')
>                      perm = Permission.objects.get(codename='publish_layer')
> -                    users = User.objects.filter(Q(groups__permissions=perm) | Q(user_permissions=perm) ).distinct()
> +                    users = User.objects.filter(Q(groups__permissions=perm) | Q(user_permissions=perm) | Q(is_superuser=True)).distinct()

I forgot to mention this earlier - can you make this a separate patch? It's not
directly related. (It was mostly intentional, but I can see that it's a permission
and therefore it can be argued that a superuser should logically have it, so
I'm OK with it.)

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

